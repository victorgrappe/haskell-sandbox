module W08_IOSpec (spec) where

import CIS194.W08_IO
import Test.Hspec

spec :: Spec
spec = do
  describe "TypeClass" $ do
    it "CIS194.W08.IO" $ do
      triplePrint "A"
    it "CIS194.W08.IOCombination" $ do
      triplePrint "B" >> triplePrint "C"
    -- putStrLn "Please enter a number: " >> (readLn >>= printPlusOne)
    it "CIS194.W08.RecordSyntax" $ do
      (getLifeName ani1) `shouldBe` "Jamon"
      (getLifeName veg1) `shouldBe` "Olivier"

      (isLifeHeavy ani1) `shouldBe` True
      (isLifeHeavy veg1) `shouldBe` False
