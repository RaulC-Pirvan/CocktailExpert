; Urmatoarele bauturi si ingrediente sunt utilizate pentru generarea de cocktailuri
; **************************Bauturi****************************************
; Absinthe  Amber_Jamaican_Rum  Amaretto  Angostura_Bitters  Apricot_Brandy  
; Bitter_Campari  Bourbon  Bourbon_Whiskey  Brandy  
; Cachaça  Calvados  Champagne  Cherry_Liqueur  Chilled_Champagne  
; Cognac  Cointreau  Crème_de_Cacao  Crème_de_Cassis  Crème_de_Menthe  
; Crème_de_Mûre  Cuban_Aguardiente Demerara_Rum  DOM_Bénédictine  
; Dry_Gin  Dry_Vermouth  Dry_White_Wine  Drambuie  Galliano  
; Ginger_Beer  Gin  Gold_PuertoRican_Rum  Gold_Rum  Goslings_Rum  
; Green_Chartreuse  Irish_Whiskey  Jamaican_Rum  Jamaican_Dark_Rum  
; Lillet_Blanc  London_Dry_Gin  Maraschino_Liqueur  Maraschino_Luxardo  
; Martinique_Molasses_Rum  Mint_Sprigs  Old_Tom_Gin  Orange_Bitters  
; Pisco  Prosecco  Rye_Whiskey  Scotch_Whisky  Smirnoff_Vodka  
; Sweet_Red_Vermouth  Sweet_Vermouth  Tequila  Tequila_Agave  
; Triple_Sec  Vodka  Vodka_Citron  White_Cuban_Rum  White_Rum
; ****************************END Bauturi************************************

; *****************************Ingrediente***********************************
; Angostura_Bitters  Aromatic_Bitters  Coconut_Cream  Coffee_Liquor  
; Cola  Cointreau  Cranberry_Juice  Crème_de_Cacao  Crème_de_Violette  
; Curacao  Dashes_Peychaud_Bitters  Donn_Mix  Egg_White  Falernum  Fresh_Cream  
; Fresh_Lemon_Juice  Fresh_Lime_Juice  Fresh_Orange_Juice  Fresh_Pineapple_Juice  
; Freshly_Squeezed_Lime_Juice  Grapefruit_Juice  Grenadine_Syrup  Honey_Syrup  
; Hot_Coffee  Lemon_Juice  Lime  Mint_Sprigs  Orange_Bitters  Orange_Curacao  
; Orgeat_Syrup  Peach_Schnapps  Peychaud_Bitters  Pineapple_Juice  Plain_Water  
; Raspberry_Syrup  Raw_Egg_White  Raw_Honey  Simple_Syrup  Soda_Water  Sugar  
; Sugar_Cane_Juice  Sugar_Syrup  Superfine_Sugar  Tabasco  Tomato_Juice  
; Water  White_Crème_de_Menthe  White_Peach_Puree  Worcestershire_Sauce
; **************************END Ingrediente***********************************
;
; ************************Format baza de fapte*******************************
; (bautura <nume_bautura>)
; (ingredient <nume_ingredient>)
; (cocktail <nume_cocktail> <<<bauturi>>> <<<ingrediente>>>)
; (combinatieCocktail <cocktail-1> <cocktail-2> <efectCocktail>)
; (combinatieBauturi <bautura-1> <bautura-2> <efectBautura>)
; ***************************************************************************
(deffacts Proiect-SBC
	(cocktail Nebunie Gin Vodka)
	(cocktail AngelFace Gin Aprico Brandy Calvados)
	(cocktail Americano Bitter Campari Sweet Red Vermouth Sod Water)
	(cocktail Alexander Cognac Creme De Cacao Fresh Cream)
	(cocktail Barracuda Gold Rum Galliano Prosecco Pineapple Juice Fresh Lime Juice)
	(cocktail BeesKnees Dry Gin Honey Syrup Fresh Lemon Juice Fresh Orange Juice)
	(cocktail Bellini Prosecco White Peach Puree)
	(cocktail BetweenTheSheets White Rum Cognac Triple Sec Fresh Lemon Juice)
	(cocktail BlackRussian Vodka Coffee Liquor)
	(cocktail BloodyMary Vodka Tomato Juice Fresh Lemon Juice Worcestershire Sauce Tabasco Celery Salt Pepper)
	(cocktail Bramble Gin Creme De Mure Fresh Lemon Juice Sugar Syrup)
	(cocktail BrandyCrusta Brandy Maraschino Luxardo Curacao Fresh Lemon Juice Simple Syrup Aromatic Biaers)
	(cocktail Cachanchara Cuban Aguardiente Fresh Lime Juice Raw Honey Water)
	(cocktail Caipirinha Cachaca Lime White Sugar)
	(cocktail Casino Old Tom Gin Maraschino Liqueur Fresh Lemon Juice Orange Biaers)
	(cocktail ChampagneCocktail Chilled Champagne Angostura Bitters Cognac Sugar)
	(cocktail CloverClub Gin Raspberry Syrup Fresh Lemon Juice Egg White)
	(cocktail CorpseReviver Gin Cointreau Lillet Blanc Absinthe Fresh Lemon Juice)
	(cocktail Cosmopolitan Vodka Citron Cointreau Fresh Lime Juice Cranberry Juice)
	(cocktail CubraLibre White Rum Cola Fresh Lime Juice)
	(cocktail Daiquiri White Cuban Ron Fresh Lime Juice Superfine Sugar)
	(cocktail DarkNStormy Goslings Rum Ginger Beer)
	(cocktail DryMartini Gin Dry Vermouth)
	(cocktail French75 Gin Champagne Fresh Lemon Juice Sugar Syrup)
	(cocktail FrenchConnection Cognac Amaretto)
	(cocktail GinFizz Gin Fresh Lemon Juice Simple Syrup Soda Water)
	(cocktail GoldenDream Galliano Triple Sec Fresh Orange Juice Fresh Cream)
	(cocktail Grasshopper Creme De Cacao Creme De Menthe Fresh Cream)
	(cocktail IrishCoffee Irish Whiskey Hot Coffee Fresh Cream Sugar)
	(cocktail JohnCollins Gin Fresh Lemon Juice Simple Syrup Soda Water)
	(cocktail Kir Dry White Wine Creme De Cassis)
	(cocktail LastWord Gin Green Chartreuse Maraschino Liqueur Fresh Lime Juice)
	(cocktail LongIslandIcedTea Vodka Cointreau Tequila White Rum Gin Lemon Juice Simple Syrup Cola)
	(cocktail MaiTai Amber Jamaican Rum Martinique Molasses Rum Orange Curacao Orgeat Syrup Fresh Lime Juice Simple Syrup)
	(cocktail Manhattan Rye Whiskey Sweet Red Vermouth Angostura Biaers)
	(cocktail Margarita Tequila Agave Triple Sec Freshly Squeezed Lime Juice)
	(cocktail Martinez London Dry Gin Sweet Red Vermouth Maraschino Liqueur Orange Bitters)
	(cocktail MaryPickford White Rum Maraschino Liqueur Fresh Pineapple Juice Grenadine Syrup)
	(cocktail MintJulep Bourbon Whiskey Mint Sprigs Sugar Water)
	(cocktail Mojito White Cuban Rum Fresh Lime Juice Mint Sprigs Sugar Water)
	(cocktail MonkeyGland Dry Gin Absinthe Fresh Orange Juice Grenadine Syrup)
	(cocktail MoscowMule Smirnoff Vodka Ginger Beer Fresh Lime Juice)
	(cocktail Negroni Gin Bitter Campari Sweet Red Vermouth)
	(cocktail OldFashioned Bourbon Angostura Biaers Sugar Plain Water)
	(cocktail Paradise Gin Apricot Brandy Fresh Orange Juice)
	(cocktail PinaColada White Rum Coconut Cream Fresh Pineapple Juice)
	(cocktail PlantersPunch Jamaican Rum Fresh Lime Juice Sugar Cane Juice)
	(cocktail PiscoSour Pisco Fresh Lemon Juice Simple Syrup Raw Egg White)
	(cocktail RustyNail Scotch Whisky Drambuie)
	(cocktail Sazerac Cognac Absinthe Sugar Dashes Peychaud Biaers)
	(cocktail SeaBreeze Vodka Cranberry Juice Grapefruit Juice)
	(cocktail SexOnTheBeach Vodka Peach Schnapps Fresh Orange Juice Cranberry Juice)
	(cocktail Sidecar Cognac Triple Sec Fresh Lemon Juice)
	(cocktail SingaporeSling Gin Cherry Liqueur Cointreau DOM Benedict Une Fresh Pineapple Juice Fresh Lime Juice Grenadine Syrup)
	(cocktail Stinger Cognac White Creme De Menthe)
	(cocktail TequilaSunrise Tequila Fresh Orange Juice Grenadine Syrup)
	(cocktail Tuxedo Old Tom Gin Dry Vermouth Maraschino Liqueur Absinthe Orange Biaers)
	(cocktail Vesper Gin Vodka Lillet Blanc)
	(cocktail VieuxCarre Rye Whiskey Cognac Sweet Vermouth DOM Benedict Une Peychaud Biaers)
	(cocktail WhiskeySour Bourbon Whiskey Fresh Lemon Juice Sugar Syrup Egg White)
	(cocktail WhiteLady Gin Triple Sec Fresh Lemon Juice)
	(cocktail Zombie Jamaican Dark Rum Gold Puerto Rican Rum Demerara Rum Fresh Lime Juice Falernum Donn Mix Grenadine Syrup Angostura Biaers)
	
	(combinatieCocktail CorpseReviver Zombie greataSevera)
	(combinatieCocktail IrishCoffee BloodyMary iritareGastrica)
	(combinatieCocktail LongIslandIcedTea  CloverClub greata)
	(combinatieCocktail MaiTai  Margarita  iritareGastrica)
	(combinatieCocktail BlackRussian  IrishCoffee  insomnie)
	(combinatieCocktail Negroni  Manhattan  obosealaHepatica)
	(combinatieCocktail Grasshopper  Daiquiri  disconfort)
	(combinatieCocktail Sazerac  Tuxedo  RiscGreataRapida)
	(combinatieCocktail WhiteLady  French75  stomacDeranjat)
	
	(combinatieBauturi Absinthe Whiskey greata)
	(combinatieBauturi Absinthe Rum greata)
	(combinatieBauturi Absinthe Cognac greata)
	(combinatieBauturi Gin Whiskey ameteli)
	(combinatieBauturi Gin Bourbon ameteli)
	(combinatieBauturi VOdka Tequila mahmurealaSevera)
	(combinatieBauturi Wine Lime refluxGastric)
	(combinatieBauturi Wine Lemon refluxGastric)
	
)
; ***************Reguli pentru bauturi******************************
; (defrule R-activare-introducere-bautura
	; (declare(salience 100))
	; =>
	; (assert (cerere-bautura))
; )

; (defrule R-introducere-bautura
	; (declare(salience 99))
	; ?x <- (cerere-bautura)
; ;	?f <- (bauturi-ramase ?n&:(> ?n 0))
	; =>
	; (printout t "Introduceti bautura: " crlf)
	; (bind ?b (read))	
	; (assert (bautura ?b))
	; (retract ?x)
	; (printout t "Mai introduceti o bautura? (D/N): ")
	; (bind ?r (read))
	; (if (or (eq ?r D) (eq ?r d)) then
		; (assert (cerere-bautura))
	; )
; ;	(retract ?f)
; ;	(assert (bauturi-ramase (- ?n 1)))
; )

(defrule R-cauta-dupa-1-bautura
	(declare(salience 98))
	(bautura ?b1)
	(cocktail ?z $? ?b1 $?)
	(not (cocktail-afisat-b1 ?z))
	=>
	(assert(cocktail-afisat-b1 ?z))
	(printout t "R-cauta-dupa-1-bautura cu [" ?b1 "] => " ?z crlf)
	;(printout ?*f1bautura* ?z crlf)
)

(defrule R-cauta-dupa-2-bauturi
	(declare(salience 97))
	(bautura ?b1)
	(bautura ?b2&:(neq ?b1 ?b2))
	(test (> (str-compare ?b1 ?b2) 0))
	(or
		(cocktail ?z $? ?b1 $? ?b2 $?)
		(cocktail ?z $? ?b2 $? ?b1 $?)
	)
	(not (cocktail-afisat-b2 ?z))
	=>
	(assert(cocktail-afisat-b2 ?z))
	(printout t "R-cauta-dupa-2-bauturi [" ?b1 " , " ?b2 "] => " ?z crlf)
)

(defrule R-inserare-BF-combinatie-2-bauturi
	(bautura ?b1)
	(bautura ?b2)
	(combinatieBauturi ?b1 ?b2 ?efect)
	=>
	(assert (efectCombinatieBautura ?efect))
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
	(or
		(cocktail ?z $? ?b1 $? ?b2 $? ?b3 $?)
        (cocktail ?z $? ?b1 $? ?b3 $? ?b2 $?)
        (cocktail ?z $? ?b2 $? ?b1 $? ?b3 $?)
        (cocktail ?z $? ?b2 $? ?b3 $? ?b1 $?)
        (cocktail ?z $? ?b3 $? ?b1 $? ?b2 $?)
        (cocktail ?z $? ?b3 $? ?b2 $? ?b1 $?)
	)
	(not (cocktail-afisat-b3 ?z))
	=>
	(assert(cocktail-afisat-b3 ?z))
	(printout t "R-cauta-dupa-3-bauturi [" ?b1 ", " ?b2 ", " ?b3 "] => " ?z crlf)
)
; *******************************END Reguli pentru bauturi***********************

; *******************************Reguli pentru ingredient **************************

; (defrule R-introducere-ingredient
	; (declare(salience 99))
; ;	?f <- (ingrediente-ramase ?n&:(> ?n 0))
	; =>
	; (printout t "Introduceti ingredientul: " crlf)
	; (bind ?ingredient (readline))	
	; (str-assert (str-cat "(ingredient " ?ingredient ")"))
; ;	(retract ?f)
; ;	(assert (ingrediente-ramase (- ?n 1)))
; )

(defrule R-cauta-dupa-1-ingredient
	(declare(salience 79))
	(ingredient ?i1)
	(cocktail ?z $? ?i1 $?)
	(not (cocktail-afisat-i1 ?z))
	=>
	(assert(cocktail-afisat-i1 ?z))
	(printout t "R-cauta-dupa-1-ingredient: [" ?i1 "] => " ?z crlf)
)

(defrule R-cauta-dupa-2-ingrediente
	(declare(salience 78))
	(ingredient ?i1)
	(ingredient ?i2&:(neq ?i1 ?i2))
	(test (> (str-compare ?i1 ?i2) 0))
	(or
		(cocktail ?z $? ?i1 $? ?i2 $?)
		(cocktail ?z $? ?i2 $? ?i1 $?)
	)
	(not (cocktail-afisat-i2 ?z))
	=>
	(assert(cocktail-afisat-i2 ?z))
	(printout t "R-cauta-dupa-2-ingrediente [" ?i1 ", " ?i2 "] => " ?z crlf)
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
	(or
		(cocktail ?z $? ?i1 $? ?i2 $? ?i3 $?)
        (cocktail ?z $? ?i1 $? ?i3 $? ?i2 $?)
        (cocktail ?z $? ?i2 $? ?i1 $? ?i3 $?)
        (cocktail ?z $? ?i2 $? ?i3 $? ?i1 $?)
        (cocktail ?z $? ?i3 $? ?i1 $? ?i2 $?)
        (cocktail ?z $? ?i3 $? ?i2 $? ?i1 $?)
	)
	(not (cocktail-afisat-i3 ?z))
	=>
	(assert(cocktail-afisat-i3 ?z))
	(printout t "R-cauta-dupa-3-ingrediente [" ?i1 ", " ?i2 ", " ?i3 "] =>" ?z crlf)
)

; ******************End Reguli ingredient *************************************

; ******************************Reguli combinatie*****************************
; Combinatie bautra + ingredient
; Combinatie intre 2 bauturi si ce efect rezulta daca se "serveste" 
; Combinatie a 2 cocktail-uri si ce efect rezulta daca se "serveste" unul dupa altul

(defrule R-combinatie-bautura-ingredient
	(declare (salience 60))
	(bautura ?b)
	(ingredient ?i)
	(cocktail ?z $? ?b $? ?i $?)
	(not (cocktail-afisat-comb ?z))
	=>
	(assert(cocktail-afisat-comb ?z))
	(printout t "R-combinatie-bautura-ingredient [B: " ?b " , I: " ?i "] => " ?z crlf)
)


(defrule R-combinatie-bautura-rezulta-efect
	(declare(salience 20))
	(bautura ?b1)
	(bautura ?b2)
	(not (combinatie-procesata-bautura ?z))
	(or
		(combinatieBauturi ?b1 ?b2 ?z)
		(combinatieBauturi ?b2 ?b1 ?z)
	)		
	=>
	(assert (combinatie-procesata-bautura ?z))
	(printout t "Combinatia bauturilor [" ?b1 ", " ?b2 "] => " ?z crlf)

)

(defrule R-combinatie-cocktail-rezulta-efect
	(declare(salience 10))
	(not (combinatie-procesata-cocktail ?z))
	(and
		(or
			(cocktail-afisat-b1 ?c1)
			(cocktail-afisat-b1 ?c2)
		)
		(or
			(cocktail-afisat-b2 ?c1)
			(cocktail-afisat-b2 ?c2)	
		)
		(or
			(cocktail-afisat-b3 ?c1)
			(cocktail-afisat-b3 ?c2)
		)
		(or
			(cocktail-afisat-comb ?c1)
			(cocktail-afisat-comb ?c2)
		)
	)
	(or
		(combinatieCocktail ?c1 ?c2 ?z)
		(combinatieCocktail ?c2 ?c1 ?z)
	)
	=>
	(assert (combinatie-procesata-cocktail ?z))
	(printout t "Combinatia cocktailuri [" ?c1 ", " ?c2 "] => " ?z crlf)
)