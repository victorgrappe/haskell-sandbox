module Inspect (main) where

import CIS194.W02_AlgebraicDataTypes
import Lib
import Yoman

main :: IO ()
main = do
  putStrLn "Welcome into the Inspect stack"
  print (listO'Things !! 1)
