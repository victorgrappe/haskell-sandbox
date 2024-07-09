module W02.AlgebraicDataTypesSpec (spec) where

import CIS194.W02.AlgebraicDataTypes
import Test.Hspec

spec :: Spec
spec = do
  describe "AlgebraicDataTypes" $ do
    it "CIS194.W02.Enum" $ do
      isSmall shoe `shouldBe` True
      isSmall2 shoe `shouldBe` True
      print "I'll be back"
      (listO'Things !! 0) `shouldBe` Shoe
      (listO'Things !! 0) `shouldBe` shoe
      print "I did it, just need to derive 'Eq'. No problem, that's clean"

    it "CIS194.W02.AlgDataType" $ do
      (safeDiv 5 0) `shouldBe` Failure
      (safeDiv 5 1) `shouldBe` OK 5

      (failureToZero (safeDiv 5 0)) `shouldBe` 0
      (failureToZero (safeDiv 5 1)) `shouldBe` 5

      (getAge brent) `shouldBe` 31
      (getAge stan) `shouldBe` 94

    it "CIS194.W02.PatternMatching" $ do
      (getAdtAge adt1) `shouldBe` 1
      (getAdtAge adt2) `shouldBe` 0
      (getAdtAge adt3) `shouldBe` 3

      (describePerson brent) `shouldBe` "The name field of (Person \"Brent\" 31 SealingWax) is Brent"

      (checkFav brent) `shouldBe` "Brent, you're my kind of person"
      (checkFav stan) `shouldBe` "Stan, your favorite thing is lame"

    it "CIS194.W02.Case" $ do
      (failureToZero (safeDiv 5 0)) `shouldBe` (failureToZero2 (safeDiv 5 0))
      (failureToZero (safeDiv 5 1)) `shouldBe` (failureToZero2 (safeDiv 5 1))

    it "CIS194.W02.RecDataType" $ do
      (intListProd listEmpty) `shouldBe` 1
      (intListProd list1) `shouldBe` 1
      (intListProd list2) `shouldBe` 2

      (treePrint tree1) `shouldBe` "{a}--1--{{b}--2--{c}}"