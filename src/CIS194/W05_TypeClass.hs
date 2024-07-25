{-# LANGUAGE FlexibleInstances #-}

module CIS194.W05_TypeClass where

class Listable a where
  toList :: a -> [Int]

instance Listable Int where
  toList x = [x]

instance Listable Bool where
  toList True = [1]
  toList False = [0]

instance Listable [Int] where
  toList = id

data Tree a = Empty | Node a (Tree a) (Tree a)

tree1 :: Tree Int
tree1 = Node 5 (Node 3 Empty Empty) (Node 6 (Node 7 Empty Empty) Empty)

instance Listable (Tree Int) where
  toList Empty = []
  toList (Node x l r) = toList l ++ [x] ++ toList r

sumL :: (Listable a) => a -> Int
sumL x = sum (toList x)

foo :: (Listable a, Ord a) => a -> a -> Bool
foo x y = sum (toList x) == sum (toList y) || x < y

-- instance (Listable a, Listable b) => Listable (a,b) where
--   toList (x,y) = toList x ++ toList y