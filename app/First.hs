module First (main) where

import CIS194.W02.AlgebraicDataTypes
import Lib
import Yoman

main :: IO ()
main = do
  putStrLn "Welcome into my first Haskell program"
  print (listO'Things !! 1)
  print (f x y)
  putStrLn "That was cool"
  print hello
  putStrLn "That was so cooooooooooool "
  print victor

-- main = someFunc
-- main = print (yoInt 1 2)
