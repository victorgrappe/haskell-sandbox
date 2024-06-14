module Lib
  ( someFunc,
    f,
    x,
    y,
    n,
  )
where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

f :: (Num a) => a -> a -> a
f x y = x * x + y * y

x :: Int
x = 2

y :: Int
y = 4

n :: Integer
n = 1234567890987654321987340982334987349872349874534
