import clips
env = clips.Environment() #crearea unei variabile de tip clips
env.clear() #clear echivalent celui din Clips
env.load("test.clp") #load la fisier (fisierul sa fie mai intai incarcat in colab)
env.reset() #reset echivalent celui din Clips
env.assert_string('(ingredient A)')
env.assert_string('(ingredient B)')
env.assert_string('(ingredient C)')

env.run() #run echivalent celui din Clips

facts = env.eval("(get-fact-list *)") #salvarea bazei de fapte intr- o variabila

print('######### Baza de fapte #########')
print(facts) #afisarea bazei de fapte
print('######### Afisare tip baza de fapte #########')
print(type(facts))
print('######### Afisarea bazei de fapte #########')
for fact in facts:
    print(fact)