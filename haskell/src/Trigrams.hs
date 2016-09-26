module Trigrams (trigramerate, consByThree, createTrigrams) where

import Data.Map (Map)
import Utils.Array (lengthIs,  consBy)

type Trigrams = Map String [String]
type Trigram = [String]
type Chunks = [[String]]


trigramerate :: String -> Trigrams
trigramerate = joinTrigrams . createTrigrams . consByThree

joinTrigrams :: [Trigram] -> Trigrams
joinTrigrams = undefined

createTrigrams :: Chunks -> [Trigram]
createTrigrams = fmap (\(x:y:rest) -> unwords [x, y] : rest)

consByThree :: String -> Chunks
consByThree = takeWhile (lengthIs 3) . consBy 3 . words
