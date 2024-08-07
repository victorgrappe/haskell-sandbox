module W07_FoldsMonoidsSpec (spec) where

import CIS194.W07_FoldsMonoids
import Test.Hspec

spec :: Spec
spec = do
  describe "TypeClass" $ do
    it "CIS194.W07.FoldsAgain" $ do
      (treeSize (leaf 3)) `shouldBe` 1
      (treeSize (bigTree)) `shouldBe` 4

      (treeSum (leaf 3)) `shouldBe` 3
      (treeSum (bigTree)) `shouldBe` 10

      (treeDepth (leaf 3)) `shouldBe` 1
      (treeDepth (bigTree)) `shouldBe` 3

      (treeFlatten (leaf 3)) `shouldBe` [3]
      (treeFlatten (bigTree)) `shouldBe` [2, 1, 3, 4]

    it "CIS194.W07.FoldsAgainGenealized" $ do
      (treeSize' (leaf 3)) `shouldBe` 1
      (treeSize' (bigTree)) `shouldBe` 4

      (treeSum' (leaf 3)) `shouldBe` 3
      (treeSum' (bigTree)) `shouldBe` 10

      (treeDepth' (leaf 3)) `shouldBe` 1
      (treeDepth' (bigTree)) `shouldBe` 3

      (treeFlatten' (leaf 3)) `shouldBe` [3]
      (treeFlatten' (bigTree)) `shouldBe` [2, 1, 3, 4]

      (treeMax' (leaf (3 :: Int))) `shouldBe` 3
      (treeMax' (bigTreeInt)) `shouldBe` 4

    it "CIS194.W07.FoldingExpressions" $ do
      (eval (Lit 1)) `shouldBe` 1
      (eval (Add (Lit 1) (Lit 2))) `shouldBe` 3
      (eval (Mul (Lit 1) (Lit 2))) `shouldBe` 2

      (eval' (Lit 1)) `shouldBe` 1
      (eval' (Add (Lit 1) (Lit 2))) `shouldBe` 3
      (eval' (Mul (Lit 1) (Lit 2))) `shouldBe` 2

      (numLiterals (Mul (Lit 1) (Lit 2))) `shouldBe` 2

    it "CIS194.W07.Monoid" $ do
      lstSum `shouldBe` 10
      lstPrd `shouldBe` 24