module CIS194.W02_AlgebraicDataTypes where

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

-- AlgDataType
data FailableDouble
  = Failure
  | OK Double
  deriving (Show, Eq)

safeDiv :: Double -> Double -> FailableDouble
safeDiv _ 0 = Failure
safeDiv x y = OK (x / y)

failureToZero :: FailableDouble -> Double
failureToZero Failure = 0
failureToZero (OK x) = x

-- Single constructor
data Person = Person String Int Thing
  deriving (Show)

brent :: Person
brent = Person "Brent" 31 SealingWax

stan :: Person
stan = Person "Stan" 94 Cabbage

getAge :: Person -> Int
getAge (Person _ age _) = age

-- Multiple constructor
data AlgDataType
  = Constr1 String Int
  | Constr2 String
  | Constr3 Int

adt1 :: AlgDataType
adt1 = (Constr1 "Albert" 1)

adt2 :: AlgDataType
adt2 = (Constr2 "Albert")

adt3 :: AlgDataType
adt3 = (Constr3 3)

-- Pattern Matching

getAdtAge :: AlgDataType -> Int
getAdtAge (Constr1 _ age) = age
getAdtAge (Constr2 _) = 0
getAdtAge (Constr3 age) = age

describePerson :: Person -> String
describePerson p@(Person name _ _) = "The name field of (" ++ show p ++ ") is " ++ name

checkFav :: Person -> String
checkFav (Person name _ SealingWax) = name ++ ", you're my kind of person"
checkFav (Person name _ _) = name ++ ", your favorite thing is lame"

-- Case Expression
failureToZero2 :: FailableDouble -> Double
failureToZero2 x = case x of
  Failure -> 0
  OK d -> d

-- Recursive Data Types
data IntList
  = Empty
  | IntListConstr Int IntList

intListProd :: IntList -> Int
intListProd Empty = 1
intListProd (IntListConstr i is) = i * intListProd is

listEmpty :: IntList
listEmpty = Empty

list1 :: IntList
list1 = IntListConstr 1 Empty

list2 :: IntList
list2 = IntListConstr 2 list1

data Tree
  = Branch Tree Int Tree
  | Leaf Char
  deriving (Show)

tree1 :: Tree
tree1 = Branch (Leaf 'a') 1 (Branch (Leaf 'b') 2 (Leaf 'c'))

treePrint :: Tree -> String
treePrint (Branch tl i tr) = "{" ++ (treePrint tl) ++ "}--" ++ show i ++ "--{" ++ (treePrint tr) ++ "}"
treePrint (Leaf c) = [c]