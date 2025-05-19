import clips  # Importă biblioteca CLIPS pentru integrarea cu un sistem expert bazat pe reguli

def insereazaClips(env, s):
    """
    Inserează în mediul CLIPS fapte de tipul (bautura <ingredient>) pentru fiecare ingredient din listă.

    Args:
        env (clips.Environment): Mediul CLIPS în care se vor introduce faptele.
        s (list): Listă (stivă) de ingrediente sub formă de stringuri (nume ingrediente).

    Returns:
        clips.Environment: Mediul CLIPS actualizat cu noile fapte.
    """
    while s:
        ingredient = s.pop()
        fapt = f"(bautura {ingredient})"  # Creează un fapt CLIPS pentru ingredient
        env.assert_string(fapt)  # Adaugă faptul în baza de cunoștințe CLIPS
    return env

def insereazaClips2(env, s):
    """
    Inserează în mediul CLIPS fapte sub formă de stringuri complete (deja formate).

    Args:
        env (clips.Environment): Mediul CLIPS în care se vor introduce faptele.
        s (list): Listă de stringuri CLIPS deja formate, ex: "(bautura rom)".

    Returns:
        clips.Environment: Mediul CLIPS actualizat cu noile fapte.
    """
    while s:
        fapt = s.pop()
        print(fapt)  # Afișează faptul pentru debugging
        env.assert_string(fapt)
    return env

def printeaza(dataJson):
    """
    Primește un obiect JSON cu ingrediente și returnează o listă de cocktailuri recomandate.

    Args:
        dataJson (dict): Obiect JSON cu cheia "ingredients", ce conține o listă de stringuri 
                         de forma "enabled NumeIngredient" sau "disabled NumeIngredient".

    Returns:
        list: Numele cocktailurilor recomandate pe baza ingredientelor selectate.
    """
    stiva = []  # Inițializează o stivă pentru ingredientele selectate

    for item in dataJson["ingredients"]:
        parts = item.split(" ", 1)
        if len(parts) == 2:
            state, ingredient = parts
            ingredient = ingredient[0] + ingredient[1:].lower()  # Normalizează numele
            if state == "enabled":
                print(ingredient, " ", state)
                stiva.append(ingredient)

    # Configurare mediu CLIPS
    env = clips.Environment()
    env.clear()
    env.load("clipsRefactor.clp")
    env.reset()

    env = insereazaClips(env, stiva)
    env.run()

    return printeazaFancy(env)

def printeazaFancy(env):
    """
    Extrage numele cocktailurilor recomandate din mediul CLIPS după inferență.

    Args:
        env (clips.Environment): Mediul CLIPS în care s-a efectuat inferența.

    Returns:
        list: Lista numelor cocktailurilor generate de sistemul expert.
    """
    rezultate = []
    facts = env.eval("(get-fact-list *)")

    for fact in facts:
        fact_str = str(fact).replace("(", "").replace(")", "")
        if "cocktailComplet" in fact_str:
            cocktail = fact_str.split()[1]
            rezultate.append(cocktail)

    return rezultate

def preparaCocktail(dataJson, dePreparat):
    """
    Pregătește un cocktail specific, folosind ingredientele selectate și returnează atât cocktailul complet,
    cât și ingredientele utilizate.

    Args:
        dataJson (dict): Obiect JSON cu cheia "ingredients", ce conține lista de ingrediente și starea lor.
        dePreparat (str): Numele cocktailului care trebuie preparat.

    Returns:
        tuple: (lista cocktailurilor preparate, lista ingredientelor utilizate)
    """
    stiva = []

    for item in dataJson["ingredients"]:
        parts = item.split(" ", 1)
        if len(parts) == 2:
            state, ingredient = parts
            ingredient = ingredient[0] + ingredient[1:].lower()
            if state == "enabled":
                print(ingredient, " ", state)
                stiva.append(f"(bautura {ingredient})")

    # Adaugă și scopul: cocktailul de preparat
    stiva.append(f"(prepara {dePreparat})")

    # Configurare mediu CLIPS
    env = clips.Environment()
    env.clear()
    env.load("clipsRefactor.clp")
    env.reset()

    env = insereazaClips2(env, stiva)
    env.run()

    return printeazaAmbele(env)

def printeazaAmbele(env):
    """
    Extrage atât cocktailurile complet preparate, cât și ingredientele (băuturile) utilizate.

    Args:
        env (clips.Environment): Mediul CLIPS după rularea inferenței.

    Returns:
        tuple: (lista cocktailurilor complet preparate, lista ingredientelor utilizate)
    """
    complete = []
    bauturi = []

    facts = env.eval("(get-fact-list *)")

    for fact in facts:
        fact_str = str(fact).replace("(", "").replace(")", "")

        if "cocktailComplet" in fact_str:
            cocktail = fact_str.split()[-1]
            complete.append(cocktail)
            print(cocktail)

        if "bautura" in fact_str:
            bautura = fact_str.split()[-1]
            bauturi.append(bautura)

    return complete, bauturi
