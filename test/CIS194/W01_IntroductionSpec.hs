module W01_IntroductionSpec (spec) where

import CIS194.W01_Introduction
import Test.Hspec

spec :: Spec
spec = do
  describe "Introduction" $ do
    it "CIS194.W01.Int" $ do
      x `shouldBe` (3 :: Int)
      i `shouldBe` (-78 :: Int)
      biggestInt `shouldBe` (((2 :: Int) ^ (63 :: Int)) - (1 :: Int) :: Int)
      smallestInt `shouldBe` (-((2 :: Int) ^ (63 :: Int)) :: Int)

    it "CIS194.W01.Integer" $ do
      numOfDigits `shouldBe` 19729

    it "CIS194.W01.Float" $ do
      f1 `shouldBe` 4.5387
      f2 `shouldBe` 6.2831e-4

    it "CIS194.W01.Double" $ do
      d1 `shouldBe` 4.5387
      d2 `shouldBe` 6.2831e-4

    it "CIS194.W01.Bool" $ do
      b1 `shouldBe` True
      b2 `shouldBe` False

    it "CIS194.W01.Char" $ do
      c1 `shouldBe` 'x'
      c2 `shouldBe` 'Ø'
      c3 `shouldBe` 'ダ'

    it "CIS194.W01.String" $ do
      s `shouldBe` "Hello, Haskell!"

    it "CIS194.W01.Arithmetic" $ do
      (3 + 2) `shouldBe` (5 :: Int)
      (19 - 27) `shouldBe` -8
      (2.35 * 8.6) `shouldBe` 20.21
      (8.7 / 3.1) `shouldBe` 2.8064516129032255
      (mod 19 3) `shouldBe` 1
      (19 `mod` 3) `shouldBe` 1
      (7 ^ 222) `shouldBe` 40903915558252355961885564235233827390274916808670721972378015470397485101670867316479654900404204284975885535566242786061025593172032118590958393531614633803778811048702555046770492868049
      ((-3) * (-7)) `shouldBe` 21

      (i `div` i) `shouldBe` 1
      (12 `div` 5) `shouldBe` 2

    it "CIS194.W01.Boolean_Logic" $ do
      (True && False) `shouldBe` False
      (not (False || True)) `shouldBe` False
      ('a' == 'a') `shouldBe` True
      (16 /= 3) `shouldBe` True
      ((5 > 3) && ('p' <= 'q')) `shouldBe` True
      ("Haskell" > "C++") `shouldBe` True

    it "CIS194.W01.Pair" $ do
      fst p `shouldBe` 3
      snd p `shouldBe` 'x'

      sumPair (1, 2) `shouldBe` 3

    it "CIS194.W01.List" $ do
      (head nums) `shouldBe` 0
      (tail nums) `shouldBe` [1, 2, 3]
      (init nums) `shouldBe` [0, 1, 2]
      (last nums) `shouldBe` 3

      (nums !! 0) `shouldBe` 0
      (nums !! 1) `shouldBe` 1
      (nums !! 3) `shouldBe` 3

      (length range) `shouldBe` 100
      (length range2) `shouldBe` 50

      hello1 `shouldBe` hello2

      (1 : []) `shouldBe` [1]
      (3 : (1 : [])) `shouldBe` [3, 1]
      (2 : 3 : 4 : []) `shouldBe` [2, 3, 4]
      (2 : 3 : 4 : []) == [2, 3, 4] `shouldBe` True

    it "CIS194.W01.Function" $ do
      sumtorial 0 `shouldBe` (0)
      sumtorial 3 `shouldBe` (3 + 2 + 1 + 0)

      hailstone 3 `shouldBe` 10

      foo (-3) `shouldBe` 0
      foo 0 `shouldBe` 16
      foo 1 `shouldBe` 3
      foo 36 `shouldBe` -43
      foo 38 `shouldBe` 41

      isEven 0 `shouldBe` True
      isEven 1 `shouldBe` False
      isEven 2 `shouldBe` True
      isEven 3 `shouldBe` False

      f 3 17 8 `shouldBe` 28

      intListLength [0, 1, 2] `shouldBe` 3

    it "CIS194.W01._" $ do
      print "Ho"
