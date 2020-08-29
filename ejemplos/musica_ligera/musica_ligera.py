

SONG='''Ella durmió
Al calor de las masas
Y yo desperté
Queriendo soñarla

Algún tiempo atrás
Pensé en escribirle
Que nunca sorteé
Las trampas del amor

De aquel amor
De música ligera
Nada nos libra
Nada más queda

No le enviaré
Cenizas de rosas
Ni pienso evitar
Un roce secreto

De aquel amor
De música ligera
Nada nos libra
Nada más queda

De aquel amor
De música ligera
Nada nos libra
Nada más queda
Nada más
Nada más queda
Nada más queda
Nada más queda
'''

words = SONG.lower().split()
words_set = set(words)
words_count = [(word, words.count(word)) for word in words_set]
print("Palabras: repeticion")
for w,c in words_count: print("\t{} : {}".format(w, c))

print("Cantidad de palabras: {}".format(len(words)))
print("Cantidad de palabras unicas: {}".format(len(words_set)))

