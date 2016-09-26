module TrigramsSpec (spec) where

import Test.Hspec
import Data.Map (fromList)

import Trigrams (trigramerate)

spec :: Spec
spec =
  describe "trigrams" $
    it "Should trigramerate 'Row Row Row Your Boat'" $
      trigramerate "Row Row Row Your Boat" `shouldBe` fromList [("Row Row", ["Row", "Your"]),
          ("Row Your", ["Boat"])]
