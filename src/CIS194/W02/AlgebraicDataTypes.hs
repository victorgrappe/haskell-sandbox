module CIS194.W02.AlgebraicDataTypes (Thing, shoe, sealingWax, listO'Things, isSmall, isSmall2, yo) where

data Thing
  = Shoe
  | Ship
  | SealingWax
  | Cabbage
  | King
  deriving (Show) -- "deriving Show" is a magical incantation which tells GHC to automatically generate default code for converting Things to Strings

shoe :: Thing
shoe = Shoe

sealingWax :: Thing
sealingWax = SealingWax

listO'Things :: [Thing]
listO'Things = [Shoe, SealingWax, King, Cabbage, King]

yo :: [Integer]
yo = [1, 2, 3, 4]

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