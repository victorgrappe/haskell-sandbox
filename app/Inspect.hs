module Inspect (main) where

import Cis192.W02.AlgebraicDataTypes
import Lib
import Yoman

main :: IO ()
main = do
  putStrLn "Welcome into the Inspect stack"
  print (listO'Things !! 1)
