module Trigrams (trigramerate) where

import Data.Map (Map)

type Trigrams = Map String [String]
type Trigram = [String]
type Chunks = [[String]]


trigramerate :: String -> Trigrams
trigramerate = joinTrigrams . createTrigrams . consByThree

joinTrigrams :: [Trigram] -> Trigrams
joinTrigrams = undefined

createTrigrams :: Chunks -> [Trigram]
createTrigrams = undefined

consByThree :: String -> Chunks
consByThree = undefined
