(deffacts init

(cocktail PinaColada A B C)
(cocktail BloodyMary A B E)
(cocktail Deloc Z)
)

(defrule complet
(ingredient ?x)
(ingredient ?y)
(ingredient ?z)
(cocktail ?nume ?x ?y ?z)
=>
(assert (C_complet ?nume))
)

(defrule incomplet
  (ingredient ?x)
  (cocktail ?nume $? ?z $? ?x $?)
  (not (ingredient ?z))
  =>
  (assert (C_incomplet ?nume))
)

(defrule incomplet2
  (ingredient ?x)
  (cocktail ?nume $? ?x $? ?z $?)
  (not (ingredient ?z))
  =>
  (assert (C_incomplet ?nume))
)