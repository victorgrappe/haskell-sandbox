module W02.AlgebraicDataTypesSpec (spec) where

import Cis192.W02.AlgebraicDataTypes
import Test.Hspec

spec :: Spec
spec = do
  describe "AlgebraicDataTypes" $ do
    it "Test CIS 192 - Week 02" $ do
      isSmall shoe `shouldBe` True
      isSmall2 shoe `shouldBe` True
      yo !! 0 `shouldBe` (1 :: Integer)
      (yo !! 0) `shouldBe` 1
      -- shoe `shouldBe` (listO'Things !! 0)
      -- shoe `shouldBe` (Shoe :: Thing)
      "I'll be back" `shouldBe` "I'll be back"
