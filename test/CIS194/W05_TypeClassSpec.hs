module W05_TypeClassSpec (spec) where

import CIS194.W05_TypeClass
import Test.Hspec

spec :: Spec
spec = do
  describe "TypeClass" $ do
    it "CIS194.W05.Parametricity" $ do
      print "Yoooooo"
      (toList (5 :: Int)) `shouldBe` [5]
      (toList True) `shouldBe` [1]
      (toList False) `shouldBe` [0]
      (toList [(1 :: Int), (2 :: Int), (3 :: Int)]) `shouldBe` [1, 2, 3]
      (toList tree1) `shouldBe` [3, 5, 7, 6]

      (sumL [(1 :: Int), (2 :: Int), (3 :: Int)]) `shouldBe` 6
      (foo (1 :: Int) (2 :: Int)) `shouldBe` True
