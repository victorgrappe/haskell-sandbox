module W03_RecPatternPolymorphismSpec (spec) where

import CIS194.W03_RecPatternPolymorphism
import Control.Exception.Base
import Test.Hspec

spec :: Spec
spec = do
  describe "RecPatternPolymorphism" $ do
    it "CIS194.W03.Map" $ do
      (absAll exampleList) `shouldBe` exampleListAbs
      (squareAll exampleList) `shouldBe` exampleListSquare
      (absAll exampleList) `shouldBe` (mapIntList abs exampleList)
      (squareAll exampleList) `shouldBe` (mapIntList squareOne exampleList)

    it "CIS194.W03.Filter" $ do
      (keepOnlyEven exampleList) `shouldBe` exampleListEven

    it "CIS194.W03.PolymorphicFunction" $ do
      (filterList even lst1) `shouldBe` (C 2 E)
      (mapList even lst1) `shouldBe` C False (C False (C True E))
      (mapList abs lst1) `shouldBe` C 3 (C 5 (C 2 E))
      (mapList squareOne lst1) `shouldBe` C 9 (C 25 (C 4 E))

    it "CIS194.W03.TotalPartialFunction" $ do
      head [] `shouldThrow` anyException
      head [] `shouldThrow` anyErrorCall
      head [] `shouldThrow` errorCall "Prelude.head: empty list"
      evaluate (error "foo") `shouldThrow` errorCall "foo"

      doStuff1 [] `shouldBe` 0
      doStuff1 [1] `shouldBe` 0
      doStuff1 [1, 2] `shouldBe` 3
      doStuff1 [1, 2, 3] `shouldBe` 3
      -- I can't find how doStuff1 is not complete

      doStuff2 [] `shouldBe` 0
      doStuff2 [1] `shouldBe` 0
      doStuff2 [1, 2] `shouldBe` 3
      doStuff2 [1, 2, 3] `shouldBe` 3

      -- head []
      safeHead [] `shouldBe` (Nothing :: Maybe Int)
      safeHead [1] `shouldBe` (Just 1 :: Maybe Int)
      safeHead [1, 2] `shouldBe` (Just 1 :: Maybe Int)
      safeHead [1, 2, 3] `shouldBe` (Just 1 :: Maybe Int)

      (nelToList nel1) `shouldBe` [1, 2, 3]

      (listToNelUnsafe [1, 2, 3]) `shouldBe` nel1

      (listToNelSafe []) `shouldBe` (Nothing :: Maybe (NonEmptyList Int))
      (listToNelSafe [1, 2, 3]) `shouldBe` (Just (nel1))

      (headNel nel1) `shouldBe` 1
      (tailNel nel1) `shouldBe` [2, 3]

      print "Heloooooooo"
