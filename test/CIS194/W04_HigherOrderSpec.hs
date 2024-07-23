module W04_HigherOrderSpec (spec) where

import CIS194.W04_HigherOrder
import Test.Hspec

spec :: Spec
spec = do
  describe "RecPatternPolymorphism" $ do
    it "CIS194.W04.AnonymousFunctions" $ do
      (gt100 90) `shouldBe` False
      (gt100 134) `shouldBe` True
      (greaterThan100 [1, 2, 9, 124, 2109812]) `shouldBe` [124, 2109812]

      ((\x -> x > 100) 90) `shouldBe` False
      ((\x -> x > 100) 134) `shouldBe` True
      (greaterThan100_2 [1, 2, 9, 124, 2109812]) `shouldBe` [124, 2109812]

      ((> 100) 90) `shouldBe` False
      ((> 100) 134) `shouldBe` True
      (greaterThan100_3 [1, 2, 9, 124, 2109812]) `shouldBe` [124, 2109812]

      ((\x y z -> [x, 2 * y, 3 * z]) 5 6 3) `shouldBe` [5, 12, 9]
      (map (* 6) [1 .. 5]) `shouldBe` [6, 12, 18, 24, 30]

    it "CIS194.W04.FunctionComposition" $ do
      ((comp even length) [1, 2, 3]) `shouldBe` False
      ((even `comp` length) [1, 2, 3]) `shouldBe` False
      (even (length [1, 2, 3])) `shouldBe` False
      ((even . length) [1, 2, 3]) `shouldBe` False
      ((\x -> (even . length) x) [1, 2, 3]) `shouldBe` False

    it "CIS194.W04.Currying&PartialApplication" $ do
      ((comp even length) [1, 2, 3]) `shouldBe` ((comp' even length) [1, 2, 3])
      (f 1 2) `shouldBe` 4
      (f' 1 2) `shouldBe` 4
      (f'' (1, 2)) `shouldBe` 4

      (schönfinkel f'' 1 2) `shouldBe` 4
      (unschönfinkel (+) (2, 3)) `shouldBe` 5

    it "CIS194.W04.WholemealProgramming" $ do
      foobar [] `shouldBe` 0
      foobar [1, 2, 3, 4] `shouldBe` 30

      foobar' [] `shouldBe` 0
      foobar' [1, 2, 3, 4] `shouldBe` 30

    it "CIS194.W04.Folds" $ do
      (sum' [1, 2, 3]) `shouldBe` 6
      (product' [1, 2, 3]) `shouldBe` 6
      (length' [1, 2, 3]) `shouldBe` 3

      (fold' 0 (+) [1, 2, 3]) `shouldBe` 6
      (fold' 1 (*) [1, 2, 3]) `shouldBe` 6
      (fold' 0 (\x y -> 1 + y) [1, 2, 3]) `shouldBe` 3
      (fold' 0 (\_ y -> 1 + y) [1, 2, 3]) `shouldBe` 3
      (fold' 0 (\_ -> (1 +)) [1, 2, 3]) `shouldBe` 3
      (fold' 0 (const (1 +)) [1, 2, 3]) `shouldBe` 3

      (sum'' [1, 2, 3]) `shouldBe` 6
      (product'' [1, 2, 3]) `shouldBe` 6
      (length'' [1, 2, 3]) `shouldBe` 3

      (foldr (+) 0 [1, 2, 3]) `shouldBe` (sum [1, 2, 3])
      (foldr (*) 1 [1, 2, 3]) `shouldBe` (product [1, 2, 3])
      (foldr (\x y -> 1 + y) 0 [1, 2, 3]) `shouldBe` (length [1, 2, 3])
      (foldr (&&) True [True, True, True]) `shouldBe` (and [True, True, True])
      (foldr (||) True [False, True, False]) `shouldBe` (or [False, True, False])
      (foldr (\x y -> (x > 3) || y) False [1, 2, 3]) `shouldBe` (any (> 3) [1, 2, 3])
      (foldr (\x y -> (x > 3) && y) True [1, 2, 3]) `shouldBe` (all (> 3) [1, 2, 3])
