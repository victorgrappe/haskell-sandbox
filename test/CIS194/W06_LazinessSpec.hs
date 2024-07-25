module W06_LazinessSpec (spec) where

import CIS194.W06_Laziness
import Test.Hspec

spec :: Spec
spec = do
  describe "TypeClass" $ do
    it "CIS194.W06.StrictEvaluation" $ do
      (take 3 (repeat 7)) `shouldBe` [7, 7, 7]
      print "Yoooooo"
