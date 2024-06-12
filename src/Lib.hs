module Lib
  ( someFunc,
    f,
    x,
    y,
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