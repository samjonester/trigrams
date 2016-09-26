module Trigrams (trigramerate, consByThree, consBy, lengthIs) where

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
consByThree = takeWhile (lengthIs 3) . consBy 3 . words

lengthIs :: Int -> [a] -> Bool
lengthIs l = (== l) . length

consBy :: Int -> [a] -> [[a]]
consBy _ [] = [[]]
consBy _ [x] = [[x]]
consBy size xs@(_:rest) = take size xs : consBy size rest
