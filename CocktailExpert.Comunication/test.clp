(deffacts init

(cocktail PinaColada A B C)
(cocktail BloodyMary A B E)
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