import Cis192.W02.AlgebraicDataTypes
-- import Control.Exception (evaluate)
-- import Lib
import Test.Hspec

-- import Test.QuickCheck

main :: IO ()
main = hspec $ do
  describe "AlgebraicDataTypes" $ do
    it "Test CIS 192 - Week 02" $ do
      isSmall shoe `shouldBe` True
      isSmall2 shoe `shouldBe` True
      -- shoe `shouldBe` (listO'Things !! 0)
      -- shoe `shouldBe` (Shoe :: Thing)
      yo !! 0 `shouldBe` (1 :: Integer)
      (yo !! 0) `shouldBe` 1
      (listO'Things !! 0) `shouldBe` (shoe :: Thing)
