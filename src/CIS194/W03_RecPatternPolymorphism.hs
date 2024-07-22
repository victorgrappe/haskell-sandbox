module CIS194.W03_RecPatternPolymorphism where

data IntList
  = Empty
  | Cons Int IntList
  deriving (Show, Eq)

exampleList :: IntList
exampleList = Cons (-1) (Cons 2 (Cons (-6) Empty))

-- Map
absAll :: IntList -> IntList
absAll Empty = Empty
absAll (Cons x xs) = Cons (abs x) (absAll xs)

exampleListAbs :: IntList
exampleListAbs = Cons (1) (Cons 2 (Cons (6) Empty))

squareAll :: IntList -> IntList
squareAll Empty = Empty
squareAll (Cons x xs) = Cons (x * x) (squareAll xs)

exampleListSquare :: IntList
exampleListSquare = Cons (1) (Cons 4 (Cons (36) Empty))

addOne :: Int -> Int
addOne x = x + 1

squareOne :: Int -> Int
squareOne x = x * x

mapIntList :: (Int -> Int) -> IntList -> IntList
mapIntList _ Empty = Empty
mapIntList f (Cons x xs) = Cons (f x) (mapIntList f xs)

-- Filter
keepOnlyEven :: IntList -> IntList
keepOnlyEven Empty = Empty
keepOnlyEven (Cons x xs)
  | even x = Cons x (keepOnlyEven xs)
  | otherwise = keepOnlyEven xs

exampleListEven :: IntList
exampleListEven = Cons 2 (Cons (-6) Empty)

-- Fold

-- Polymorphic Data Type
data List t
  = E
  | C t (List t)
  deriving (Show, Eq)

lst1 :: List Int
lst1 = C 3 (C 5 (C 2 E))

lst2 :: List Char
lst2 = C 'x' (C 'y' (C 'z' E))

lst3 :: List Bool
lst3 = C True (C False E)

-- Polymorphic Function
filterList :: (t -> Bool) -> List t -> List t
filterList _ E = E
filterList p (C x xs)
  | p x = C x (filterList p xs)
  | otherwise = filterList p xs

mapList :: (a -> b) -> List a -> List b
mapList _ E = E
mapList f (C x xs) = C (f x) (mapList f xs)

-- Total and Partial functions
testList :: [Int]
testList = [1, 2, 3, 4]

doStuff1 :: [Int] -> Int
doStuff1 [] = 0
doStuff1 [_] = 0
doStuff1 xs = head xs + head (tail xs)

doStuff2 :: [Int] -> Int
doStuff2 [] = 0
doStuff2 [_] = 0
doStuff2 (x1 : x2 : _) = x1 + x2

-- Approach 1: Use the Maybe Type as output type
safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead (x : _) = Just x

-- Approach 2: Use the partial function on types that has suffiscient garantees
data NonEmptyList a = NEL a [a] deriving (Show, Eq)

nel1 :: NonEmptyList Int
nel1 = NEL 1 [2, 3]

l1 :: [Int]
l1 = [1, 2, 3]

nelToList :: NonEmptyList a -> [a]
nelToList (NEL x xs) = x : xs

listToNelUnsafe :: [a] -> NonEmptyList a
listToNelUnsafe (x : xs) = NEL x xs

listToNelSafe :: [a] -> Maybe (NonEmptyList a)
listToNelSafe [] = Nothing
listToNelSafe (x : xs) = Just (NEL x xs)

headNel :: NonEmptyList a -> a
headNel (NEL x _) = x

tailNel :: NonEmptyList a -> [a]
tailNel (NEL _ xs) = xs
