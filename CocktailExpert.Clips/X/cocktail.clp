(defrule DeschideFisier-Cocktail
	(declare (salience -999))
	=>
	;(open out.txt out_data "w" )
	(if (open cocktail.txt input_data "r") then
		(bind ?simbol_C (readline input_data))
		(while  (and (neq ?simbol_C FALSE)(not (eq ?simbol_C "")))
			(assert (cocktail (explode$ ?simbol_C "")))
			(bind ?simbol_C (readline input_data))			
		)
		(close input_data)
    else
        (printout t "Eroare: Nu s-a putut deschide fisierul Input.txt" crlf)
	)
)
(defrule DeschideFisier_Bautura
	(declare (salience -998))
	=>
	(if (open bautura.txt bautura_data "r") then
		(bind ?simbol_B (readline bautura_data))
		(while  (and (neq ?simbol_B FALSE)(not (eq ?simbol_B "")))
			(assert (bautura (explode$ ?simbol_B "")))
			(bind ?simbol_B (readline bautura_data))			
		)
		(close bautura_data)
    else
        (printout t "Eroare: Nu s-a putut deschide fisierul Input.txt" crlf)
	)
)
(defrule DeschideFisier_Ingredient
	(declare (salience -997))
	=>
	(if (open Ingredient.txt ingredient_data "r") then
		(bind ?simbol_I (readline ingredient_data))
		(while  (and (neq ?simbol_I FALSE)(not (eq ?simbol_I "")))
			(assert (ingredient (explode$ ?simbol_I "")))
			(bind ?simbol_I (readline ingredient_data))			
		)
		(close ingredient_data)
    else
        (printout t "Eroare: Nu s-a putut deschide fisierul Input.txt" crlf)
	)
	
)
(defrule cauta_bautura_ingredient
	(bautura ?b)
	(ingredient ?i)
	=>
	(printout t "Am gasit bautura: " ?b " si ingredientul: " ?i crlf)
)

(defrule R_cauta_dupa_bautura
	(declare (salience 5))
	(bautura ?x)
	;(test (stringp ?x))
	(cocktail ?z $? ?x $?)
	=>
	(printout t "Conform la bautura: " ?x " s-a gasit " ?z crlf)
	
)

(defrule R_cauta_dupa_ingredient
	(declare (salience 6))
	(ingredient ?y)
	;(test (stringp ?y))
	(cocktail ?z ? $? ?y $?)
	=>
	(printout t "Conform la ingredientul: " ?y " s-a gasit "  ?z crlf)	
)
(defrule R_cautare_comuna
	(declare (salience 7))
	(bautura ?x)
	(ingredient ?y)
	(cocktail ?z $? ?x $? ?y $?)
	=>
	(printout t "Conform la bautura (" ?x") si ingredientul (" ?y ") s-a gasit "  ?z crlf)
)
(defrule RInchideFisier
	=>
	(close input_data)
	(close bautura_data)
	(close ingredient_data)
	(close out_data)
)


