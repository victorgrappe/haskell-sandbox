module Main (main) where

import Lib

main :: IO ()
main = do
  putStrLn "Welcome into my first Haskell program"
  print (f x y)
  putStrLn "That was cool"

-- main = someFunc
-- main = print (yoInt 1 2)
