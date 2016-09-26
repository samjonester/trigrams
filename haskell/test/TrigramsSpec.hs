module TrigramsSpec (main, spec) where

import Test.Hspec
import Data.Map (Map, fromList)

import Trigrams (trigramerate)

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "trigrams" $ do
    it "Should trigramerate 'Row Row Row Your Boat'" $ do
      trigramerate "Row Row Row Your Boat" `shouldBe` fromList [("Row Row", ["Row", "Your"]),
          ("Row Your", ["Boat"])]
