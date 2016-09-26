module Utils.ArraySpec (spec) where

import Test.Hspec

import Utils.Array (lengthIs, consBy)

spec :: Spec
spec = do
  describe "lengthIs" $ do
    it "Should return true when length is matched" $
      lengthIs 3 ["Foo", "Bar", "Baz"] `shouldBe` True
    it "Should return false when length is not matched" $
      lengthIs 3 ["Foo", "Bar", "Baz", "Qux"] `shouldBe` False

  describe "consBy" $ do
    it "Should create arrays of consecutive elements from a list" $
      consBy 2 ["Foo", "Bar", "Baz"] `shouldBe` [["Foo", "Bar"], ["Bar", "Baz"], ["Baz"]]
    it "Should not barf on an empty list" $
      consBy 2 ([] :: [String]) `shouldBe` [[]]
