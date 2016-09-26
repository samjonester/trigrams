module Utils.Array (lengthIs, consBy) where

lengthIs :: Int -> [a] -> Bool
lengthIs l = (== l) . length

consBy :: Int -> [a] -> [[a]]
consBy _ [] = [[]]
consBy _ [x] = [[x]]
consBy size xs@(_:rest) = take size xs : consBy size rest
