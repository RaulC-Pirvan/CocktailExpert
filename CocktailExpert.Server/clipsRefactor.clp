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
	;(cocktail Nebunie Gin Vodka)
	;(cocktail VPR Vodka Prosecco Rum)
	;(cocktail Bla Champagne Sugar)
	(cocktail AngelFace Gin ApricotBrandy Calvados)
	(cocktail Americano BitterCampari Red-vermouth Water)
	(cocktail Alexander Cognac CremeDeCacao FreshCream)
	(cocktail Barracuda GoldRum Galliano Prosecco PineappleJuice Lime)
	(cocktail BeesKnees Gin HoneySyrup Lemon-juice Orange-juice)
	(cocktail Bellini Prosecco White-peach-puree)
	(cocktail BetweenTheSheets Rum Cognac TripleSec Lemon-juice)
	(cocktail BlackRussian Vodka Coffee-liqueur)
	(cocktail BloodyMary Vodka Tomato-juice Lemon-juice Worcestershire-sauce)
	(cocktail Bramble Gin CremeDeMure Lemon-juice SugarSyrup)
	(cocktail BrandyCrusta Brandy MaraschinoLuxardo Curacao Lemon-juice Simple-syrup )
	(cocktail Cachanchara CubanAguardiente Lime RawHoney Water)
	(cocktail Caipirinha Cachaca Lime Sugar)
	(cocktail Casino Gin Maraschino Lime OrangeBiaers)
	(cocktail ChampagneCocktail ChilledChampagne AngosturaBitters Cognac Sugar)
	(cocktail CloverClub Gin RaspberrySyrup Lime EggWhite)
	(cocktail CorpseReviver Gin Cointreau Lillet-blanc Absinthe Lime)
	(cocktail Cosmopolitan Vodka Cointreau Lime Cranberry-juice)
	(cocktail CubraLibre Rum Cola Lime)
	(cocktail Daiquiri Rum Lime Sugar)
	(cocktail DarkNStormy Rum GingerBeer)
	(cocktail DryMartini Gin DryVermouth)
	(cocktail French75 Gin Champagne Lime SugarSyrup)
	(cocktail FrenchConnection Cognac Amaretto)
	(cocktail GinFizz Gin Lime Simple-syrup Water)
	(cocktail GoldenDream Galliano TripleSec Orange-juice FreshCream)
	(cocktail Grasshopper CremeDeCacao CremeDeMenthe FreshCream)
	(cocktail IrishCoffee Whiskey HotCoffee FreshCream Sugar)
	(cocktail JohnCollins Gin Lime Simple-syrup SodaWater)
	(cocktail Kir DryWhiteWine CremeDeCassis)
	(cocktail LastWord Gin GreenChartreuse Maraschino Lime)
	(cocktail LongIslandIcedTea Vodka Cointreau Tequila Rum Gin LemonJuice Simple-syrup Cola)
	(cocktail MaiTai Rum OrangeCuracao OrgeatSyrup Lime Simple-syrup)
	(cocktail Manhattan RyeWhiskey Red-vermouth AngosturaBiaers)
	(cocktail Margarita TequilaAgave TripleSec FreshlySqueezedLimeJuice)
	(cocktail Martinez Gin Red-vermouth Maraschino OrangeBitters)
	(cocktail MaryPickford Rum Maraschino FreshPineappleJuice GrenadineSyrup)
	(cocktail MintJulep BourbonWhiskey MintSprigs Sugar Water)
	(cocktail Mojito Rum Lime MintSprigs Sugar Water)
	(cocktail MonkeyGland Gin Absinthe Orange-juice GrenadineSyrup)
	(cocktail MoscowMule SmirnoffVodka GingerBeer Lime)
	(cocktail Negroni Gin BitterCampari Red-vermouth)
	(cocktail OldFashioned Bourbon Angostura-bitters Sugar Water)
	(cocktail Paradise Gin ApricotBrandy Orange-juice)
	(cocktail PinaColada Rum CoconutCream FreshPineappleJuice)
	(cocktail PlantersPunch Rum Lime SugarCaneJuice)
	(cocktail PiscoSour Pisco Lime Simple-syrup RawEggWhite)
	(cocktail RustyNail ScotchWhisky Drambuie)
	(cocktail Sazerac Cognac Absinthe Sugar DashesPeychaudBiaers)
	(cocktail SeaBreeze Vodka Cranberry-juice GrapefruitJuice)
	(cocktail SexOnTheBeach Vodka PeachSchnapps Orange-juice Cranberry-juice)
	(cocktail Sidecar Cognac Triplesec Lime)
	(cocktail SingaporeSling Gin CherryLiqueur Cointreau DOMBenedictUne FreshPineappleJuice Lime GrenadineSyrup)
	(cocktail Stinger Cognac WhiteCremeDeMenthe)
	(cocktail TequilaSunrise Tequila Orange-juice GrenadineSyrup)
	(cocktail Tuxedo OldTomGin DryVermouth Maraschino Absinthe OrangeBiaers)
	(cocktail Vesper Gin Vodka Lillet-blanc)
	(cocktail VieuxCarre RyeWhiskey Cognac SweetVermouth DOMBenedictUne PeychaudBiaers)
	(cocktail WhiskeySour BourbonWhiskey Lime SugarSyrup EggWhite)
	(cocktail WhiteLady Gin TripleSec Lime)
	(cocktail Zombie Rum Lime Falernum DonnMix GrenadineSyrup AngosturaBiaers)
)
; (defrule R_test_2_bauturi
	; =>
	; (assert (bautura DryWhiteWine))
	; (assert (bautura CremeDeCassis ))
	; (printout t "R_test_2_bauturi" crlf)

; )


; (defrule R_test_3_bauturi
	; =>
	; (assert (bautura Gin ))
	; (assert (bautura ApricotBrandy))
	; (assert (bautura Calvados))
	; (printout t "R_test_3_bauturi" crlf)

; )

; (defrule R-test-4-bauturi
	; =>
	; (assert (bautura Prosecco))
	; (assert (bautura WhitePeachPuree))
	; (assert (bautura Vodka))	
	; (assert (bautura Cognac))	
	; (assert (bautura Absinthe))	
	; (assert (bautura TomatoJuice))		
	; (assert (bautura Gin))	
	; (assert (bautura Orange-juice))
	; (assert (bautura GrenadineSyrup))
	
	;(assert (bautura OrangeBitters))
	; (printout t "R_test_4_bauturi" crlf)

; )

; (defrule R-test-1-bauturi-1-ingredient
	; =>
	; (assert (bautura Prosecco))
	; (assert (ingredient WhitePeachPuree ))
	; (printout t "R_test_4_bauturi" crlf)

; )
; ========START 2 bauturi=====================
(defrule R-2-bauturi
	(bautura ?b1)
	(bautura ?b2)
	(cocktail ?cockt ?b1 ?b2)
	=>
	(assert (cocktailComplet ?cockt ?b1 ?b2))
	(printout t "R_2_bauturi cu " ?cockt crlf)
)
(defrule R-eliminare-cocktail-2-bauturi
	?a1 <- (bautura ?b1)
	?a2 <- (bautura ?b2)
	?a3 <- (cocktailComplet ?cockt ?b1 ?b2)
	?a4 <- (prepara ?cockt)
	=>
	(retract ?a1 ?a2 ?a3 ?a4)
	(assert(drunk ?cockt))
	(printout t "R-eliminare-cocktail-2-bauturi cu cocktail [" ?cockt "] eliminat" crlf)
)

;===============END 2 bauturi=================


; ============START 3 bauturi=================
(defrule R-3-bauturi
	(bautura ?b1)
	(bautura ?b2)
	(bautura ?b3)
	(cocktail ?cockt ?b1 ?b2 ?b3)
	=>
	(assert (cocktailComplet ?cockt ?b1 ?b2 ?b3))
	(printout t "R_3_bauturi cu " ?cockt crlf)
)

(defrule R-eliminare-cocktail-3-bauturi
	?w1 <- (bautura ?c1)
	?w2 <- (bautura ?c2)
	?w3 <- (bautura ?c3)
	?w10 <- (cocktailComplet ?cockt ?c1 ?c2 ?c3)
	?w11 <- (prepara ?cockt)
	=>
	(retract ?w1 ?w2 ?w3 ?w10 ?w11)
	(assert(drunk ?cockt))
	(printout t "R-eliminare-cocktail-3-bauturi cu cocktail [" ?cockt "] eliminat" crlf)
)

;===============END 3 bauturi================


; ============START 4 bauturi=================
(defrule R-4-bauturi
	(bautura ?b1)
	(bautura ?b2)
	(bautura ?b3)
	(bautura ?b4)
	(cocktail ?cockt ?b1 ?b2 ?b3 ?b4)
	=>
	(assert (cocktailComplet ?cockt ?b1 ?b2 ?b3 ?b4))
	(printout t "R_4_bauturi cu " ?cockt crlf)
)

(defrule R-eliminare-cocktail-4-bauturi
	?y1 <- (bautura ?c1)
	?y2 <- (bautura ?c2)
	?y3 <- (bautura ?c3)
	?y4 <- (bautura ?c4)
	?y10 <- (cocktailComplet ?cockt ?c1 ?c2 ?c3 ?c4)
	?y11 <- (prepara ?cockt)
	=>
	(retract ?y1 ?y2 ?y3 ?y4 ?y10 ?y11)
	(assert(drunk ?cockt))
	(printout t "R-eliminare-cocktail-4-bauturi cu cocktail [" ?cockt "] eliminat" crlf)
)

; ===============END 4 bauturi================


; ============START 5 bauturi=================
(defrule R-5-bauturi
	(bautura ?b1)
	(bautura ?b2)
	(bautura ?b3)
	(bautura ?b4)
	(bautura ?b5)
	(cocktail ?cockt ?b1 ?b2 ?b3 ?b4 ?b5)
	=>
	(assert (cocktailComplet ?cockt ?b1 ?b2 ?b3 ?b4 ?b5))
	(printout t "R-5-bauturi cu " ?cockt crlf)
)

(defrule R-eliminare-cocktail-5-bauturi
	?y1 <- (bautura ?c1)
	?y2 <- (bautura ?c2)
	?y3 <- (bautura ?c3)
	?y4 <- (bautura ?c4)
	?y5 <- (bautura ?c5)
	?y10 <- (cocktailComplet ?cockt ?c1 ?c2 ?c3 ?c4 ?c5)
	?y11 <- (prepara ?cockt)
	=>
	(retract ?y1 ?y2 ?y3 ?y4 ?y5 ?y10 ?y11)
	(assert(drunk ?cockt))
	(printout t "R-eliminare-cocktail-5-bauturi cu cocktail [" ?cockt "] eliminat" crlf)
)

; ===============END 5 bauturi================

; ============START 6 bauturi=================
(defrule R-6-bauturi
	(bautura ?b1)
	(bautura ?b2)
	(bautura ?b3)
	(bautura ?b4)
	(bautura ?b5)
	(bautura ?b6)
	(cocktail ?cockt ?b1 ?b2 ?b3 ?b4 ?b5 ?b6)
	=>
	(assert (cocktailComplet ?cockt ?b1 ?b2 ?b3 ?b4 ?b5 ?b6))
	(printout t "R-6-bauturi cu " ?cockt crlf)
)

(defrule R-eliminare-cocktail-6-bauturi
	?y1 <- (bautura ?c1)
	?y2 <- (bautura ?c2)
	?y3 <- (bautura ?c3)
	?y4 <- (bautura ?c4)
	?y5 <- (bautura ?c5)
	?y6 <- (bautura ?c6)
	?y10 <- (cocktailComplet ?cockt ?c1 ?c2 ?c3 ?c4 ?c5 ?c6)
	?y11 <- (prepara ?cockt)
	=>
	(retract ?y1 ?y2 ?y3 ?y4 ?y5 ?y6 ?y10 ?y11)
	(assert(drunk ?cockt))
	(printout t "R-eliminare-cocktail-6-bauturi cu cocktail [" ?cockt "] eliminat" crlf)
)

; ===============END 6 bauturi================