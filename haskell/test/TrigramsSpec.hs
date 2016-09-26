module TrigramsSpec (spec) where

import Test.Hspec
import Data.Map (Map, fromList)

import Trigrams (trigramerate, consByThree)

spec :: Spec
spec = do
  describe "trigrams" $ do
    it "Should trigramerate 'Row Row Row Your Boat'" $ do
      trigramerate "Row Row Row Your Boat" `shouldBe` fromList [("Row Row", ["Row", "Your"]),
          ("Row Your", ["Boat"])]

  describe "consByThree" $ do
    it "Should create arrays of 3 consecutive words in string" $ do
      consByThree "Row Row Row Your Boat" `shouldBe` [["Row", "Row", "Row"], ["Row", "Row", "Your"], ["Row", "Your", "Boat"]]
