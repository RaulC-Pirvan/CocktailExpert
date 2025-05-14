import clips  # Importarea bibliotecii CLIPS pentru integrarea cu un sistem expert

def insereazaClips(env, s):
    """
    Inserează în mediul CLIPS fapte de tipul (bautura <ingredient>) pentru fiecare element din stivă.

    Args:
        env (clips.Environment): Mediul CLIPS în care se inserează faptele.
        s (list): Listă (stivă) cu ingrediente sub formă de stringuri.

    Returns:
        clips.Environment: Mediul CLIPS actualizat cu faptele introduse.
    """
    while s:
        stringLocal = "(bautura " + s.pop() + " )"  # Creează un fapt CLIPS pentru fiecare ingredient
        env.assert_string(stringLocal)  # Inserează faptul în baza de fapte CLIPS
    return env

def insereazaClips2(env, s):
    """
    Inserează în mediul CLIPS fapte de tipul (bautura <ingredient>) pentru fiecare element din stivă.

    Args:
        env (clips.Environment): Mediul CLIPS în care se inserează faptele.
        s (list): Listă (stivă) cu ingrediente sub formă de stringuri.

    Returns:
        clips.Environment: Mediul CLIPS actualizat cu faptele introduse.
    """
    while s:
        stringuletRaul=s.pop()
        print(stringuletRaul)
        env.assert_string(stringuletRaul)  # Inserează faptul în baza de fapte CLIPS
    return env

def printeaza(dataJson):
    """
    Procesează un obiect JSON cu ingrediente, le introduce în CLIPS și extrage rezultatul inferenței.

    Args:
        dataJson (dict): Obiect JSON care conține o listă de ingrediente sub cheia "ingredients".
                         Fiecare ingredient este un string de forma "enabled NumeIngredient".

    Returns:
        list: Listă de cocktailuri sugerate de sistemul expert pe baza ingredientelor selectate.
    """
    stiva = []  # Inițializează lista (stiva) pentru ingrediente selectate

    # Parcurge ingredientele și extrage cele marcate ca "enabled"
    for item in dataJson["ingredients"]:
        parts = item.split(" ", 1)  # Împarte în stare și numele ingredientului
        if len(parts) == 2:
            state, ingredient = parts
            ingredient = ingredient[0] + ingredient[1:].lower()  # Normalizează numele
            if state == "enabled":
                print(ingredient, " ", state)
                stiva.append(ingredient)

    # Inițializare și configurare mediu CLIPS
    env = clips.Environment()
    env.clear()  # Golește faptele și regulile existente
    env.load("clipsRefactor.clp")  # Încarcă fișierul cu regulile sistemului expert
    env.reset()  # Resetează mediul CLIPS pentru o rulare nouă

    env = insereazaClips(env, stiva)  # Inserează faptele (ingredientele)
    env.run()  # Rulează motorul de inferență CLIPS

    output = printeazaFancy(env)  # Extrage rezultatele
    return output


def printeazaFancy(env):
    """
    Extrage din mediul CLIPS cocktailurile rezultate în urma inferenței.

    Args:
        env (clips.Environment): Mediul CLIPS după ce a fost rulat.

    Returns:
        list: Listă de nume de cocktailuri recomandate (stringuri).
    """
    cuvinte = []  # Inițializează lista pentru cocktailuri
    facts = env.eval("(get-fact-list *)")  # Obține lista completă a faptelor din CLIPS

    for fact in facts:
        stringulet = str(fact)
        stringulet = stringulet.replace("(", "").replace(")", "")  # Elimină parantezele

        if "c_complet" in stringulet:
            last_word = stringulet.split()[-1]  # Ia ultimul cuvânt (numele cocktailului)
            cuvinte.append(last_word)

    return cuvinte  # Returnează lista cu cocktailurile generate

def preparaCocktail(dataJson, dePreparat):

    stiva = []  # Inițializează lista (stiva) pentru ingrediente selectate

    # Parcurge ingredientele și extrage cele marcate ca "enabled"
    for item in dataJson["ingredients"]:
        parts = item.split(" ", 1)  # Împarte în stare și numele ingredientului
        if len(parts) == 2:
            state, ingredient = parts
            ingredient = ingredient[0] + ingredient[1:].lower()  # Normalizează numele
            if state == "enabled":
                print(ingredient, " ", state)
                stiva.append("(bautura " + ingredient + ")")

    # Inițializare și configurare mediu CLIPS
    env = clips.Environment()
    env.clear()  # Golește faptele și regulile existente
    env.load("clipsRefactor.clp")  # Încarcă fișierul cu regulile sistemului expert
    env.reset()  # Resetează mediul CLIPS pentru o rulare nouă
    stiva.append("(prepara "+dePreparat+ ")")
    env = insereazaClips2(env, stiva)  # Inserează faptele (ingredientele)
    env.run()  # Rulează motorul de inferență CLIPS

    return printeazaAmbele(env)

def printeazaAmbele(env):
    complete = []  # Inițializează lista pentru cocktailuri
    bauturi=[]
    facts = env.eval("(get-fact-list *)")  # Obține lista completă a faptelor din CLIPS

    for fact in facts:
        stringulet = str(fact)
        stringulet = stringulet.replace("(", "").replace(")", "")  # Elimină parantezele

        if "c_complet" in stringulet:
            last_word = stringulet.split()[-1]  # Ia ultimul cuvânt (numele cocktailului)
            complete.append(last_word)
            print(last_word)

        if "bautura" in stringulet:
            last_word = stringulet.split()[-1]  # Ia ultimul cuvânt (numele cocktailului)
            bauturi.append(last_word)

    return complete, bauturi  # Returnează lista cu cocktailurile generate