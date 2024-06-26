module W01.IntroductionSpec (spec) where

import Cis192.W01.Introduction
import Test.Hspec

spec :: Spec
spec = do
  describe "Introduction" $ do
    it "Test CIS 192 - Week 01" $ do
      one `shouldBe` (1 :: Integer)
