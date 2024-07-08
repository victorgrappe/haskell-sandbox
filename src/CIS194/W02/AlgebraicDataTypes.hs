module CIS194.W02.AlgebraicDataTypes where

-- Enum
data Thing
  = Shoe
  | Ship
  | SealingWax
  | Cabbage
  | King
  deriving (Show, Eq) -- "deriving Show" is a magical incantation which tells GHC to automatically generate default code for converting Things to Strings

shoe :: Thing
shoe = Shoe

sealingWax :: Thing
sealingWax = SealingWax

listO'Things :: [Thing]
listO'Things = [Shoe, SealingWax, King, Cabbage, King]

isSmall :: Thing -> Bool
isSmall Shoe = True
isSmall Ship = False
isSmall SealingWax = True
isSmall Cabbage = True
isSmall King = False

isSmall2 :: Thing -> Bool
isSmall2 Ship = False
isSmall2 King = False
isSmall2 _ = True

-- Beyond Enum
data FailableDouble
  = Failure
  | OK Double
  deriving (Show, Eq)

yo = Failure

safeDiv :: Double -> Double -> FailableDouble
safeDiv _ 0 = Failure
safeDiv x y = OK (x / y)

failureToZero :: FailableDouble -> Double
failureToZero Failure = 0
failureToZero (OK x) = x

data Person = Person String Int Thing
  deriving (Show)

brent :: Person
brent = Person "Brent" 31 SealingWax

stan :: Person
stan = Person "Stan" 94 Cabbage

getAge :: Person -> Int
getAge (Person _ age _) = age
