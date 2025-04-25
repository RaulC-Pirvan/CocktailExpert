import clips

def insereazaClips(env,s):
    while s:
        stringLocal="(ingredient "+s.pop()+" )"
        env.assert_string(stringLocal)
    return env

def printeaza(dataJson):
    stiva=[]
    for item in dataJson["ingredients"]:
        parts = item.split(" ", 1)  # Split into "enabled"/"disabled" and ingredient name
        if len(parts) == 2:
            state, ingredient = parts
            ingredient = ingredient[0] + ingredient[1:].lower()
            if state == "enabled":
                #print(ingredient, " ", state)
                stiva.append(ingredient)

    env = clips.Environment()  # crearea unei variabile de tip clips
    env.clear()  # clear echivalent celui din Clips
    env.load("Proiect_V01.clp")  # load la fisier (fisierul sa fie mai intai incarcat in colab)
    env.reset()  # reset echivalent celui din Clips

    env = insereazaClips(env, stiva)
    env.run()
    output = printeazaFancy(env)
    return output



def printeazaFancy(env):
    cuvinte=[]
    facts = env.eval("(get-fact-list *)")  # salvarea bazei de fapte intr- o variabila
    for fact in facts:
        #print(fact)
        stringulet = str(fact)
        stringulet = stringulet.replace("(", "")
        stringulet = stringulet.replace(")", "")
        if "cocktail-afisat-" in stringulet:
            last_word = stringulet.split()[-1]  # gets the part after the last space
            #print(f'Pot face {last_word}')
            cuvinte.append(last_word)
    return cuvinte




