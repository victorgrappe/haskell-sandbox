import AlgebraicDataTypes
-- import Control.Exception (evaluate)
-- import Lib
import Test.Hspec

-- import Test.QuickCheck

main :: IO ()
main = hspec $ do
  describe "AlgebraicDataTypes" $ do
    it "returns the first element of a list" $ do
      isSmall shoe `shouldBe` True
      isSmall2 shoe `shouldBe` True
