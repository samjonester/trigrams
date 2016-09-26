module TrigramsSpec (main, spec) where

import Test.Hspec
import Data.Map (Map, fromList)

import Trigrams (trigramerate, consByThree, lengthIs, consBy)

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "trigrams" $ do
    it "Should trigramerate 'Row Row Row Your Boat'" $ do
      trigramerate "Row Row Row Your Boat" `shouldBe` fromList [("Row Row", ["Row", "Your"]),
          ("Row Your", ["Boat"])]

  describe "consByThree" $ do
    it "Should create arrays of 3 consecutive words in string" $ do
      consByThree "Row Row Row Your Boat" `shouldBe` [["Row", "Row", "Row"], ["Row", "Row", "Your"], ["Row", "Your", "Boat"]]

  describe "lengthIs" $ do
    it "Should return true when length is matched" $ do
      lengthIs 3 ["Foo", "Bar", "Baz"] `shouldBe` True
    it "Should return false when length is not matched" $ do
      lengthIs 3 ["Foo", "Bar", "Baz", "Qux"] `shouldBe` False

  describe "consBy" $ do
    it "Should create arrays of consecutive elements from a list" $ do
      consBy 2 ["Foo", "Bar", "Baz"] `shouldBe` [["Foo", "Bar"], ["Bar", "Baz"], ["Baz"]]
    it "Should not barf on an empty list" $ do
      consBy 2 ([] :: [String]) `shouldBe` [[]]
