
(defrule R-cauta-dupa-1-bautura
	(declare(salience 96))
	(bautura ?b1)
	(cocktail ?z $? ?b1 $?)
	(not (cocktail-afisat-b1 ?z))
	=>
	(assert(cocktail-afisat-b1 ?z))
	(printout t "R-cauta-dupa-1-bautura cu [" ?b1 "] => " ?z crlf)
	;(printout ?*f1bautura* ?z crlf)
)

; (defrule R-cauta-dupa-2-bauturi
	; (declare(salience 97))
	; (bautura ?b1)
	; (bautura ?b2&:(neq ?b1 ?b2))
	; (test (> (str-compare ?b1 ?b2) 0))
	; (cocktail ?z $? ?b1 $? ?b2 $?)
	; (not (cocktail-afisat-b2 ?z))
	; (not (cocktail-afisat-b1 ?z))
	; =>
	; (assert(cocktail-afisat-b2 ?z))
	; (printout t "R-cauta-dupa-2-bauturi [" ?b1 " , " ?b2 "] => " ?z crlf)
; )	

; (defrule R-cauta-dupa-3-bauturi
	; (declare(salience 96))
	; (bautura ?b1)
	; (bautura ?b2&:(neq ?b1 ?b2))
	; (test (> (str-compare ?b1 ?b2) 0))
	; (bautura ?b3&:(and 
					; (neq ?b1 ?b3) 
					; (neq ?b2 ?b3)
					; )
	; )
	; (test (and 
				; (> (str-compare ?b2 ?b3) 0)
				; (> (str-compare ?b1 ?b3) 0)
			; )
	; )
	; (cocktail ?z $? ?b1 $? ?b2 $? ?b3 $?)
	; (not (cocktail-afisat-b3 ?z))
	; =>
	; (assert(cocktail-afisat-b3 ?z))
	; (printout t "R-cauta-dupa-3-bauturi [" ?b1 ", " ?b2 ", " ?b3 "] => " ?z crlf)
; )

(defrule c_Nebunie
(bautura Vodka)
(bautura Gin)
;?e <- (cocktail-afisat-b1 Nebunie)
;?e2 <- (cocktail-afisat-b2 Nebunie)
=>
;(retract ?e ?e2)
(assert (c_complet Nebunie))
(printout t "Nebunie este complet" crlf)
)

(defrule c_Bla
(bautura Champagne)
(bautura Sugar)
;?e <- (cocktail-afisat-b1 Nebunie)
;?e2 <- (cocktail-afisat-b2 Nebunie)
=>
;(retract ?e ?e2)
(assert (c_complet Bla))
(printout t "Bla este complet" crlf)
)

(defrule c_VPR
(bautura Vodka)
(bautura Prosecco)
(bautura Rum)
;?e <- (cocktail-afisat-b1 VPR)
;?e2 <- (cocktail-afisat-b2 VPR)
;?e3 <- (cocktail-afisat-b3 VPR)
=>
;(retract ?e ?e2 ?e3)
(assert (c_complet VPR))
(printout t "VPR este complet" crlf)
)



(defrule p_Nebunie
(declare (salience 50))
;(c_complet Nebunie)
?p <- (prepara Nebunie)
?g <- (bautura Gin)
?v <- (bautura Vodka)
?c <- (cocktail Nebunie Gin Vodka)
=>
(retract ?c ?p ?g ?v)
(assert (drank Nebunie))
(printout t "am baut nebunie" crlf))

(defrule p_Bla
(declare (salience 50))
;(c_complet Nebunie)
?p <- (prepara Bla)
?g <- (bautura Champagne)
?v <- (bautura Sugar)
?c <- (cocktail Bla Champagne Sugar)
=>
(retract ?c ?p ?g ?v)
(assert (drank Bla))
(printout t "am baut bla" crlf))

(defrule p_VPR
(declare (salience 50))
;?e <- (cocktail-afisat-b1 VPR)
;?e2 <- (cocktail-afisat-b2 VPR)
;?e3 <- (cocktail-afisat-b3 VPR)
?a <- (prepara VPR)
?b <- (bautura Vodka)
?c <- (bautura Prosecco)
?d <- (bautura Rum)
?e <- (cocktail VPR Vodka Prosecco Rum)
=>
(printout t "M-am autoapelat pe valoare" crlf)
(retract ?a ?b ?c ?d ?e)
(assert (drank VPR)))

(assert (eliminaCocktail Kir))
(assert (eliminaCocktail AngelFace))
(assert (eliminaCocktail Martinez))