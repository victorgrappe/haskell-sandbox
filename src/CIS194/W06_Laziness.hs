{-# LANGUAGE FlexibleInstances #-}

module CIS194.W06_Laziness where

-- m can remain completely unevaluated
f1 :: Maybe a -> [Maybe a]
f1 m = [m, m]

-- thunks are evaluated only enough to allow a pattern match to proceed, and no further
f2 :: Maybe a -> [a]
f2 Nothing = []
f2 (Just x) = [x]

repeat' :: a -> [a]
repeat' x = x : repeat' x

take' :: Int -> [a] -> [a]
take' n _ | n <= 0 = []
take' _ [] = []
take' n (x : xs) = x : take' (n - 1) xs