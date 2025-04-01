import clips

def insereazaClips(env,s):
    while s:
        stringLocal="(ingredient "+s.pop()+" )"
        env.assert_string(stringLocal)
    return env


def printeaza(env):
    facts = env.eval("(get-fact-list *)")  # salvarea bazei de fapte intr- o variabila
    for fact in facts:
        stringulet = str(fact)
        stringulet = stringulet.replace("(", "")
        stringulet = stringulet.replace(")", "")
        if "C_complet" in stringulet:
            print(f'Pot face {stringulet.replace("C_complet", "")}')
        if "C_incomplet" in stringulet:
            print(f'Lipsesc ingrediente {stringulet.replace("C_incomplet", "")}')


env = clips.Environment() #crearea unei variabile de tip clips
env.clear() #clear echivalent celui din Clips
env.load("test.clp") #load la fisier (fisierul sa fie mai intai incarcat in colab)
env.reset() #reset echivalent celui din Clips
env.assert_string('(ingredient A)')
env.assert_string('(ingredient B)')
env.assert_string('(ingredient C)')

env.run() #run echivalent celui din Clips



print("prima tura")
env.reset()
s=["A"]
env=insereazaClips(env,s)
env.run()
printeaza(env)

print("turul doi")
env.reset()
s=["A","B", "C"]
env=insereazaClips(env,s)
env.run()
printeaza(env)





