module Main (main) where

import Lib
import Types

main :: IO ()
main = do
  putStrLn "Welcome into my first Haskell program"
  print (f x y)
  putStrLn "That was cool"
  print hello
  putStrLn "That was so cool"
  print victor

-- main = someFunc
-- main = print (yoInt 1 2)
