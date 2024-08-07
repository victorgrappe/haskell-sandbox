{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module CIS194.W07_FoldsMonoids where

-- FoldsAgain
data Tree a
  = Empty
  | Node (Tree a) a (Tree a)
  deriving (Show, Eq)

leaf :: a -> Tree a
leaf x = Node Empty x Empty

bigTree :: Tree Integer
bigTree = Node (Node Empty 2 Empty) 1 (Node Empty 3 (Node Empty 4 Empty))

bigTreeInt :: Tree Int
bigTreeInt = Node (Node Empty 2 Empty) 1 (Node Empty 3 (Node Empty 4 Empty))

treeSize :: Tree a -> Integer
treeSize Empty = 0
treeSize (Node l _ r) = 1 + treeSize l + treeSize r

treeSum :: Tree Integer -> Integer
treeSum Empty = 0
treeSum (Node l x r) = x + treeSum l + treeSum r

treeDepth :: Tree Integer -> Integer
treeDepth Empty = 0
treeDepth (Node l _ r) = 1 + max (treeDepth l) (treeDepth r)

treeFlatten :: Tree Integer -> [Integer]
treeFlatten Empty = []
treeFlatten (Node l x r) = treeFlatten l ++ [x] ++ treeFlatten r

-- FoldsAgainGenealized
treeFold :: b -> (b -> a -> b -> b) -> Tree a -> b
treeFold e _ Empty = e
treeFold e f (Node l x r) = f (treeFold e f l) x (treeFold e f r)

treeSize' :: Tree a -> Integer
treeSize' = treeFold 0 (\l _ r -> 1 + l + r)

treeSum' :: Tree Integer -> Integer
treeSum' = treeFold 0 (\l x r -> l + x + r)

treeDepth' :: Tree Integer -> Integer
treeDepth' = treeFold 0 (\l _ r -> 1 + max l r)

treeFlatten' :: Tree Integer -> [Integer]
treeFlatten' = treeFold [] (\l x r -> l ++ [x] ++ r)

treeMax' :: (Ord a, Bounded a) => Tree a -> a
treeMax' = treeFold minBound (\l x r -> l `max` x `max` r)

-- FoldingExpressions

data ExprT
  = Lit Integer
  | Add ExprT ExprT
  | Mul ExprT ExprT

eval :: ExprT -> Integer
eval (Lit x) = x
eval (Add x y) = (eval x) + (eval y)
eval (Mul x y) = (eval x) * (eval y)

exprtFold :: (Integer -> b) -> (b -> b -> b) -> (b -> b -> b) -> ExprT -> b
exprtFold f _ _ (Lit x) = f x
exprtFold f g h (Add x y) = g (exprtFold f g h x) (exprtFold f g h y)
exprtFold f g h (Mul x y) = h (exprtFold f g h x) (exprtFold f g h y)

eval' :: ExprT -> Integer
eval' = exprtFold id (+) (*)

numLiterals :: ExprT -> Integer
numLiterals = exprtFold (const 1) (+) (+)

-- Monoid
newtype Sum a = Sum a deriving (Eq, Ord, Num, Show)

instance (Num a) => Semigroup (Sum a) where
  (Sum a) <> (Sum b) = Sum (a + b)

instance (Num a) => Monoid (Sum a) where
  mempty = Sum 0

getSum :: Sum a -> a
getSum (Sum a) = a

newtype Prd a = Prd a deriving (Eq, Ord, Num, Show)

instance (Num a) => Semigroup (Prd a) where
  (Prd a) <> (Prd b) = Prd (a * b)

instance (Num a) => Monoid (Prd a) where
  mempty = Prd 1

getPrd :: Prd a -> a
getPrd (Prd a) = a

lst :: [Integer]
lst = [1, 2, 3, 4]

lstSum :: Integer
lstSum = getSum . mconcat . map Sum $ lst

lstPrd :: Integer
lstPrd = getPrd . mconcat . map Prd $ lst
