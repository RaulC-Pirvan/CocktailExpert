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
	(cocktail Americano BitterCampari SweetRedVermouth SodWater)
	(cocktail Alexander Cognac CremeDeCacao FreshCream)
	(cocktail Barracuda GoldRum Galliano Prosecco PineappleJuice FreshLimeJuice)
	(cocktail BeesKnees DryGin HoneySyrup FreshLemonJuice FreshOrangeJuice)
	(cocktail Bellini Prosecco WhitePeachPuree)
	(cocktail BetweenTheSheets WhiteRum Cognac TripleSec FreshLemonJuice)
	(cocktail BlackRussian Vodka CoffeeLiquor)
	(cocktail BloodyMary Vodka TomatoJuice FreshLemonJuice WorcestershireSauce TabascoCelerySalt Pepper)
	(cocktail Bramble Gin CremeDeMure FreshLemonJuice SugarSyrup)
	(cocktail BrandyCrusta Brandy MaraschinoLuxardo Curacao FreshLemonJuice SimpleSyrup AromaticBiaers)
	(cocktail Cachanchara CubanAguardiente FreshLimeJuice RawHoney Water)
	(cocktail Caipirinha Cachaca Lime WhiteSugar)
	(cocktail Casino OldTomGin MaraschinoLiqueur FreshLimeJuice OrangeBiaers)
	(cocktail ChampagneCocktail ChilledChampagne AngosturaBitters Cognac Sugar)
	(cocktail CloverClub Gin RaspberrySyrup FreshLimeJuice EggWhite)
	(cocktail CorpseReviver Gin Cointreau LilletBlanc Absinthe FreshLimeJuice)
	(cocktail Cosmopolitan VodkaCitron Cointreau FreshLimeJuice CranberryJuice)
	(cocktail CubraLibre WhiteRum Cola FreshLimeJuice)
	(cocktail Daiquiri WhiteCubanRum FreshLimeJuice SuperfineSugar)
	(cocktail DarkNStormy GoslingsRum GingerBeer)
	(cocktail DryMartini Gin DryVermouth)
	(cocktail French75 Gin Champagne FreshLimeJuice SugarSyrup)
	(cocktail FrenchConnection Cognac Amaretto)
	(cocktail GinFizz Gin FreshLimeJuice SimpleSyrup SodaWater)
	(cocktail GoldenDream Galliano TripleSec FreshOrangeJuice FreshCream)
	(cocktail Grasshopper CremeDeCacao CremeDeMenthe FreshCream)
	(cocktail IrishCoffee IrishWhiskey HotCoffee FreshCream Sugar)
	(cocktail JohnCollins Gin FreshLimeJuice SimpleSyrup SodaWater)
	(cocktail Kir DryWhiteWine CremeDeCassis)
	(cocktail LastWord Gin GreenChartreuse MaraschinoLiqueur FreshLimeJuice)
	(cocktail LongIslandIcedTea Vodka Cointreau Tequila WhiteRum Gin LemonJuice SimpleSyrup Cola)
	(cocktail MaiTai AmberJamaicanRum MartiniqueMolassesRum OrangeCuracao OrgeatSyrup FreshLimeJuice SimpleSyrup)
	(cocktail Manhattan RyeWhiskey SweetRedVermouth AngosturaBiaers)
	(cocktail Margarita TequilaAgave TripleSec FreshlySqueezedLimeJuice)
	(cocktail Martinez LondonDryGin SweetRedVermouth MaraschinoLiqueur OrangeBitters)
	(cocktail MaryPickford WhiteRum MaraschinoLiqueur FreshPineappleJuice GrenadineSyrup)
	(cocktail MintJulep BourbonWhiskey MintSprigs SugarWater)
	(cocktail Mojito WhiteRum FreshLimeJuice MintSprigs Sugar Water)
	(cocktail MonkeyGland DryGin Absinthe FreshOrangeJuice GrenadineSyrup)
	(cocktail MoscowMule SmirnoffVodka GingerBeer FreshLimeJuice)
	(cocktail Negroni Gin BitterCampari SweetRedVermouth)
	(cocktail OldFashioned Bourbon AngosturaBiaers Sugar Water)
	(cocktail Paradise Gin ApricotBrandy FreshOrangeJuice)
	(cocktail PinaColada WhiteRum CoconutCream FreshPineappleJuice)
	(cocktail PlantersPunch JamaicanRum FreshLimeJuice SugarCaneJuice)
	(cocktail PiscoSour Pisco FreshLimeJuice SimpleSyrup RawEggWhite)
	(cocktail RustyNail ScotchWhisky Drambuie)
	(cocktail Sazerac Cognac Absinthe Sugar DashesPeychaudBiaers)
	(cocktail SeaBreeze Vodka CranberryJuice GrapefruitJuice)
	(cocktail SexOnTheBeach Vodka PeachSchnapps FreshOrangeJuice CranberryJuice)
	(cocktail Sidecar Cognac TripleSec FreshLimeJuice)
	(cocktail SingaporeSling Gin CherryLiqueur Cointreau DOMBenedictUne FreshPineappleJuice FreshLimeJuice GrenadineSyrup)
	(cocktail Stinger Cognac WhiteCremeDeMenthe)
	(cocktail TequilaSunrise Tequila FreshOrangeJuice GrenadineSyrup)
	(cocktail Tuxedo OldTomGin DryVermouth MaraschinoLiqueur Absinthe OrangeBiaers)
	(cocktail Vesper Gin Vodka LilletBlanc)
	(cocktail VieuxCarre RyeWhiskey Cognac SweetVermouth DOMBenedictUne PeychaudBiaers)
	(cocktail WhiskeySour BourbonWhiskey FreshLimeJuice SugarSyrup EggWhite)
	(cocktail WhiteLady Gin TripleSec FreshLimeJuice)
	(cocktail Zombie JamaicanDarkRum GoldPuertoRicanRum DemeraraRum FreshLimeJuice Falernum DonnMix GrenadineSyrup AngosturaBiaers)	; aici sunt 19 ingrediente, deci maxim pana la 20 buc
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
	; (assert (bautura LondonDryGin))
	; (assert (bautura MaraschinoLiqueur))
	; (assert (bautura SweetRedVermouth))	
	; (assert (bautura OrangeBitters))
	; (printout t "R_test_4_bauturi" crlf)

; )

(defrule R-test-1-bauturi-1-ingredient
	=>
	(assert (bautura Prosecco))
	(assert (ingredient WhitePeachPuree ))
	(printout t "R_test_4_bauturi" crlf)

)
; ========START 2 bauturi=====================
(defrule R-2-bauturi
	(bautura ?b1)
	(bautura ?b2)
	(cocktail ?cockt ?b1 ?b2)
	=>
	(assert (cocktailComplet2B ?cockt ?b1 ?b2))
	(printout t "R_2_bauturi cu " ?cockt crlf)
)
(defrule R-eliminare-cocktail-2-bauturi
	?a1 <- (bautura ?b1)
	?a2 <- (bautura ?b2)
	?a3 <- (cocktailComplet2B ?cockt ?b1 ?b2)
	?a4 <- (eliminaCocktail ?cockt)
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
	(assert (cocktailComplet3B ?cockt ?b1 ?b2 ?b3))
	(printout t "R_3_bauturi cu " ?cockt crlf)
)

(defrule R-eliminare-cocktail-3-bauturi
	?w1 <- (bautura ?c1)
	?w2 <- (bautura ?c2)
	?w3 <- (bautura ?c3)
	?w10 <- (cocktailComplet3B ?cockt ?c1 ?c2 ?c3)
	?w11 <- (eliminaCocktail ?cockt)
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
	(assert (cocktailComplet3B ?cockt ?b1 ?b2 ?b3 ?b4))
	(printout t "R_4_bauturi cu " ?cockt crlf)
)

(defrule R-eliminare-cocktail-4-bauturi
	?y1 <- (bautura ?c1)
	?y2 <- (bautura ?c2)
	?y3 <- (bautura ?c3)
	?y4 <- (bautura ?c4)
	?y10 <- (cocktailComplet3B ?cockt ?c1 ?c2 ?c3 ?c4)
	?y11 <- (eliminaCocktail ?cockt)
	=>
	(retract ?y1 ?y2 ?y3 ?y4 ?y10 ?y11)
	(assert(drunk ?cockt))
	(printout t "R-eliminare-cocktail-4-bauturi cu cocktail [" ?cockt "] eliminat" crlf)
)

;===============END 4 bauturi================


; ============START 1 bautura + 1 ingredient=================
(defrule R-1-bauturi-1-ingredient
	(bautura ?b1)
	(ingredient ?i2)
	(cocktail ?cockt ?b1 ?i2)
	=>
	(assert (cocktailComplet3B ?cockt ?b1 ?i2))
	(printout t "R-1-bauturi-1-ingredient cu " ?cockt crlf)
)

(defrule R-eliminare-cocktail-1-bauturi-1-ingredient
	?y1 <- (bautura ?b1)
	?y2 <- (ingredient ?i2)
	?y10 <- (cocktailComplet3B ?cockt ?b1 ?i2)
	?y11 <- (eliminaCocktail ?cockt)
	=>
	(retract ?y1 ?y2 ?y10 ?y11)
	(assert(drunk ?cockt))
	(printout t "R-eliminare-cocktail-1-bauturi-1-ingredient [" ?cockt "] eliminat" crlf)
)

;===============END 4 bauturi================