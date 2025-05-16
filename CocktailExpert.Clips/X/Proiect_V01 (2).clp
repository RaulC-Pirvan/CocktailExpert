(defglobal
		?*fdate* = nil
		?*f1bautura* = nil
)

(defrule R1-deschidere-date
	(declare(salience 999))
	=>
	(if (open "cocktail.dat" ?*fdate* "r") then
		(assert (faza citire1))
	else
		(printout t "Eroare la deschidere cocktail.dat!" crlf)
	)
)

(defrule R2-citire-date
	(declare(salience 998))
	?a <- (faza citire1)
	=>
	(retract ?a)
	(bind ?val (readline ?*fdate*))
	(if (or (eq ?val FALSE) (eq ?val "")) then
		(close ?*fdate*)
		(assert (faza citire2))
	else
		(bind ?words (explode$ ?val))
		(if (> (length$ ?words) 0) then
			(assert (cocktail ?words))
		)
		(assert (faza citire1))
	)
)


(defrule R3-dechidere-1-bautura
	(declare(salience 997))
	?f <- (faza citire2)
	=>
	(retract ?f)
	(if (open "bautura1.dat" ?*f1bautura* "w") then
		(assert (faza final))
	else
		(printout t "Eroare la deschidere bautura1.dat!" crlf)
	)
)


(defrule R-final
	?f <- (faza final)
	=>
	(retract ?f)
	(printout t "Citirea s-a incheiat." crlf)
)


(defrule R-start
	=>
	(assert (start))
)

(defrule R-introducere-bautura
	(declare(salience 99))
;	?f <- (bauturi-ramase ?n&:(> ?n 0))
	=>
	(printout t "Introduceti bautura: " crlf)
	(bind ?b (read))	
	(assert (bautura ?b))
;	(retract ?f)
;	(assert (bauturi-ramase (- ?n 1)))
)

(defrule R-cauta-dupa-1-bautura
	(declare(salience 98))
	(bautura ?b1)
	(cocktail ?z $? ?b1 $?)
	(not (cocktail-afisat-b1 ?z))
	=>
	(assert(cocktail-afisat-b1 ?z))
	(printout t "R-cauta-dupa-1-bautura cu " ?b1 ": " ?z crlf)
	(printout ?*f1bautura* "[FILE] " ?z crlf)
)

(defrule R-cauta-dupa-2-bauturi
	(declare(salience 97))
	(bautura ?b1)
	(bautura ?b2&:(neq ?b1 ?b2))
	(test (> (str-compare ?b1 ?b2) 0))
	(cocktail ?z $? ?b1 $? ?b2 $?)
	(not (cocktail-afisat-b2 ?z))
	=>
	(assert(cocktail-afisat-b2 ?z))
	(printout t "R-cauta-dupa-2-bauturi " ?b1 " si " ?b2 " s-a gasit: " ?z crlf)
)

(defrule R-cauta-dupa-3-bauturi
	(declare(salience 96))
	(bautura ?b1)
	(bautura ?b2&:(neq ?b1 ?b2))
	(test (> (str-compare ?b1 ?b2) 0))
	(bautura ?b3&:(and 
					(neq ?b1 ?b3) 
					(neq ?b2 ?b3)
					)
	)
	(test (and 
				(> (str-compare ?b2 ?b3) 0)
				(> (str-compare ?b1 ?b3) 0)
			)
	)
	(cocktail ?z $? ?b1 $? ?b2 $? ?b3 $?)
	(not (cocktail-afisat-b3 ?z))
	=>
	(assert(cocktail-afisat-b3 ?z))
	(printout t "R-cauta-dupa-2-bauturi:" ?b1 ", " ?b2 ", " ?b3 " => " ?z crlf)
)

;(defrule R-numar-ingrediente
;	(declare(salience 89))
;	=>
;	(printout t "Introduceti cate ingredientele folositi pentru cocktail: " crlf)
;	(bind ?val (readline))
;	(str-assert (str-cat "(ingrediente-ramase " ?val ")"))
;)

(defrule R-introducere-ingredient
	(declare(salience 99))
;	?f <- (ingrediente-ramase ?n&:(> ?n 0))
	=>
	(printout t "Introduceti ingredientul: " crlf)
	(bind ?ingredient (readline))	
	(str-assert (str-cat "(ingredient " ?ingredient ")"))
;	(retract ?f)
;	(assert (ingrediente-ramase (- ?n 1)))
)

(defrule R-cauta-dupa-1-ingredient
	(declare(salience 79))
	(ingredient ?i1)
	(cocktail ?z $? ?i1 $?)
	(not (cocktail-afisat-i1 ?z))
	=>
	(assert(cocktail-afisat-i1 ?z))
	(printout t "R-cauta-dupa-1-ingredient: " ?i1 " s-a gasit " ?z crlf)
)

(defrule R-cauta-dupa-2-ingrediente
	(declare(salience 78))
	(ingredient ?i1)
	(ingredient ?i2&:(neq ?i1 ?i2))
	(test (> (str-compare ?i1 ?i2) 0))
	(cocktail ?z $? ?i1 $? ?i2 $?)
	(not (cocktail-afisat-i2 ?z))
	=>
	(assert(cocktail-afisat-i2 ?z))
	(printout t "R-cauta-dupa-2-ingrediente: " ?i1 ", " ?i2 " s-a gasit: " ?z crlf)
)

(defrule R-cauta-dupa-3-ingrediente
	(declare(salience 77))
	(ingredient ?i1)
	(ingredient ?i2&:(neq ?i1 ?i2))
	(test (> (str-compare ?i1 ?i2) 0))
	(ingredient ?i3&:(and 
					(neq ?i1 ?i3) 
					(neq ?i2 ?i3)
					)
	)
	(test (and 
				(> (str-compare ?i2 ?i3) 0)
				(> (str-compare ?i1 ?i3) 0)
			)
	)
	(cocktail ?z $? ?i1 $? ?i2 $? ?i3 $?)
	(not (cocktail-afisat-i3 ?z))
	=>
	(assert(cocktail-afisat-i3 ?z))
	(printout t "R-cauta-dupa-3-ingrediente: " ?i1 ", " ?i2 ", " ?i3 " s-a gasit: " ?z crlf)
)

(defrule R-combinatie-bautura-ingredient
	(declare (salience 60))
	(bautura ?b)
	(ingredient ?i)
	(cocktail ?z $? ?b $? ?i $?)
	(not (cocktail-afisat-comb ?z))
	=>
	(assert(cocktail-afisat-comb ?z))
	(printout t "R-combinatie-bautura-ingredient B: " ?b " , " I: ?i " => " ?z crlf)
)


(defrule R-combinatie
	(declare(salience 20))
	(bautura ?x)
	(bautura ?y)
	(sePotCombina ?x ?y ?z)
	=>
	(printout t "Conform la bautura (" ?x ") si bautura (" ?y "): " ?z crlf)

)
;(defrule R-retragere
;	(declare(salience 10))
;	(retragere ?x)
;	?a <- (bautura ?x)
;	=>
;	(retract ?a)
;)
(defrule R-inchidere-fisier
	(declare (salience 0))
	=>
	(close ?*fdate*)
	(close ?*f1bautura*)
)

;(defrule R-numar-bauturi
;	(declare(salience 100))
;	?r <- (start)
;	=>
;	(retract ?r)
;	(printout t "Introduceti cate bauturi folositi pentru cocktail: " crlf)
;	(bind ?val (read))
;	(assert (bauturi-ramase ?val))
;)


;(defrule R4-citire-1-bautura
;	(declare(salience 998))
;	?a <- (faza citire3)
;	=>
;	(retract ?a)
;	(bind ?val (readline f1bautura))
;	(if (neq ?val EOF) then
;		(bind ?words (explode$ ?val))
;		(assert (cocktail-1-bautura ?words))
;		(assert (faza citire3))
;	else
;		(close f1bautura)
;		(assert (faza final))
;	)
;)


;(defrule R-scriere-fisier
;	(declare(salience 950))
;	?f <- (faza final)
;	=>
;	(retract ?f)
;	(if (open "bautura1.dat" fbautura1esire "w") then
;		(printout t "Fisier deschis pentru scriere." crlf)
;	else
;		(printout t "Eroare la deschidere pentru scriere!" crlf)
;	)
;
;)