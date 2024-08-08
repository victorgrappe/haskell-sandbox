{-# LANGUAGE FlexibleInstances #-}

module CIS194.W08_IO where

-- IO
triplePrint :: String -> IO ()
triplePrint s = putStrLn (s ++ s ++ s)

-- IOCombination
printPlusOne :: Integer -> IO ()
printPlusOne n = putStrLn (show (n + 1))

-- RecordSyntax
data Life
  = Animal {name :: String, weight :: Integer, speed :: Integer}
  | Vegetal {name :: String, weight :: Integer}

ani1 = Animal "Jamon" 7 30 :: Life

ani2 = Animal {name = "Oki", weight = 10, speed = 22} :: Life

veg1 = Vegetal "Olivier" 3 :: Life

veg2 = Vegetal {name = "Cactous", weight = 2} :: Life

lives = [ani1, ani2, veg1, veg2] :: [Life]

getLifeName :: Life -> String
getLifeName = name

isLifeHeavy :: Life -> Bool
isLifeHeavy (Animal {weight = w}) = w > 5
isLifeHeavy (Vegetal {weight = w}) = w > 5
