module W02.AlgebraicDataTypesSpec (spec) where

import CIS194.W02.AlgebraicDataTypes
import CIS194.W02.AlgebraicDataTypes (brent, failureToZero)
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

    it "CIS194.W02.BeyondEnum" $ do
      (safeDiv 5 0) `shouldBe` Failure
      (safeDiv 5 1) `shouldBe` OK 5

      (failureToZero (safeDiv 5 0)) `shouldBe` 0
      (failureToZero (safeDiv 5 1)) `shouldBe` 5

      (getAge brent) `shouldBe` 31
      (getAge stan) `shouldBe` 94
