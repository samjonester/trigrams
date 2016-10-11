module Utils.ArraySpec (spec) where

import Test.Hspec

import Utils.Array (lengthIs, consBy)

spec :: Spec
spec = describe "consBy" $ do
    it "Should create arrays of consecutive elements from a list" $
      consBy 2 ["Foo", "Bar", "Baz"] `shouldBe` [["Foo", "Bar"], ["Bar", "Baz"]]
    it "Should not barf when size > length of array" $
      consBy 2 ["Foo"] `shouldBe` [["Foo"]]
