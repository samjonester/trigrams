module Trigrams (trigramerate) where

import qualified Data.Map as Map
import Utils.Array (consBy)

type Trigrams = Map.Map String [String]
type Trigram = (String, [String])
type Chunks = [[String]]


trigramerate :: String -> Trigrams
trigramerate = joinTrigrams . createTrigrams . consByThree

joinTrigrams :: [Trigram] -> Trigrams
joinTrigrams = foldl insertVal Map.empty
  where
    insertVal acc (k, v) = Map.insertWith prepend k v acc
    prepend = flip (++)

createTrigrams :: Chunks -> [Trigram]
createTrigrams = fmap (\(x:y:z) -> (unwords [x, y], z))

consByThree :: String -> Chunks
consByThree = consBy 3 . words
