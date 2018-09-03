-- DPS Calculator
-- 20 = def mais comum
menu = do 
    putStrLn("\t_________STATUS________")
    putStr("\t|Att : ")
    x <- lerInt
    putStr("\t|Dex : ")
    y <- lerInt
    putStr("\t|DmgMinimo :")
    z <- lerInt
    putStr("\t|DmgMaximo :")
    w <- lerInt
    putStr("\t|Numero de Tiros:")
    t <- lerInt
    putStr("\t|Rate of Fire %:")
    r <- lerInt
    putStrLn("\t|______________________\n\n\n")
    --read x ::int
    putStrLn("________|Tabela de DPS|_________")
    
    
    let def = 0
    let aux = 0
    let somar10 x = (x+10)
 

    let aps = (((1.5 + (6.5*(y/75)))*r)/100)
    let damageMult = 0.5 + (x/50)
    let damageVariation = ((z*(damageMult)),(w*(damageMult)))
    let media = ((w+z)/2)
    let damageMedia = ((media)*(damageMult))
    let dps = ((damageMedia)*(aps)) -- calcular com def
    


    let dpsComDef x = (damageMedia-x)*aps


    putStrLn("\n\n|Def:"++ show (def) ++ "\tDps:"++ show (dpsComDef def))
    let aux = somar10 def
    let def = aux
    putStrLn("\n\n|Def:"++ show (def) ++ "\tDps:"++ show (dpsComDef def))
    let aux = somar10 def    
    let def = aux
    putStrLn("\n\n|Def:"++ show (def) ++ "\tDps:"++ show (dpsComDef def))
    let aux = somar10 def    
    let def = aux
    putStrLn("\n\n|Def:"++ show (def) ++ "\tDps:"++ show (dpsComDef def))
    let aux = somar10 def    
    let def = aux
    putStrLn("\n\n|Def:"++ show (def) ++ "\tDps:"++ show (dpsComDef def))
    let aux = somar10 def
    let def = aux
    putStrLn("\n\n|Def:"++ show (def) ++ "\tDps:"++ show (dpsComDef def))
    let aux = somar10 def
    let def = aux
    putStrLn("\n\n|Def:"++ show (def) ++ "\tDps:"++ show (dpsComDef def))
    let aux = somar10 def
    let def = aux
    putStrLn("___________________________________")


    putStr("Variação :")
    return verificar dps dpsComDef





--recebeValor :: String -> String -> String -> String -> IO
--recebeValor x y z w = dps (read x::Float) (read y::Float) (read z::Float) (read w::Float)


lerInt::IO(Float)
lerInt = do
    n <- getLine
    return (read n)



verificar x y | x >= (y*15)/100 = x  
              | otherwise = (y*15)/100

--Atacks per second
-- aps :: Float -> Float
-- aps dex = (1.5 + (6.5*(dex/75)))

-- damageMult :: Float -> Float
-- damageMult att = 0.5 + (att/50)

-- damageVariation::Float -> Float -> Float -> (Float, Float)
-- damageVariation min max att = ((min*damageMult att),(max*damageMult att))

-- damageMedia :: Float -> Float -> Float -> Float
-- damageMedia min max att = (((min+max)/2)*damageMult att)

-- dps :: Float -> Float -> Float -> Float -> Float
-- dps min max att dex = ((damageMedia min max att)*aps dex)
