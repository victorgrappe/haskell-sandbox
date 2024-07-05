module W01.IntroductionSpec (spec) where

import CIS194.W01.Introduction
import Test.Hspec

spec :: Spec
spec = do
  describe "Introduction" $ do
    it "CIS194.W01" $ do
      x `shouldBe` (3 :: Int)
      i `shouldBe` (-78 :: Int)
      biggestInt `shouldBe` ((2 ^ 63) - 1 :: Int)
      smallestInt `shouldBe` (-(2 ^ 63) :: Int)
