module W01.IntroductionSpec (spec) where

import CIS194.W01.Introduction
import Test.Hspec

spec :: Spec
spec = do
  describe "Introduction" $ do
    it "CIS194.W01" $ do
      -- Int
      x `shouldBe` (3 :: Int)
      i `shouldBe` (-78 :: Int)
      biggestInt `shouldBe` (((2 :: Int) ^ (63 :: Int)) - (1 :: Int) :: Int)
      smallestInt `shouldBe` (-((2 :: Int) ^ (63 :: Int)) :: Int)

      -- Integer
      numOfDigits `shouldBe` 19729

      -- Float
      f1 `shouldBe` 4.5387
      f2 `shouldBe` 6.2831e-4

      -- Double
      d1 `shouldBe` 4.5387
      d2 `shouldBe` 6.2831e-4

      -- Bool
      b1 `shouldBe` True
      b2 `shouldBe` False

      -- Char
      c1 `shouldBe` 'x'
      c2 `shouldBe` 'Ø'
      c3 `shouldBe` 'ダ'

      -- String
      s `shouldBe` "Hello, Haskell!"

      -- Arithmetic
      ex01 `shouldBe` 5
      ex02 `shouldBe` -8
      ex03 `shouldBe` 20.21
      ex04 `shouldBe` 2.8064516129032255
      ex05 `shouldBe` 1
      ex06 `shouldBe` 1
      ex07 `shouldBe` 40903915558252355961885564235233827390274916808670721972378015470397485101670867316479654900404204284975885535566242786061025593172032118590958393531614633803778811048702555046770492868049
      ex08 `shouldBe` 21
