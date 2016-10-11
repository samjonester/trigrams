module Utils.Array (lengthIs, consBy) where

lengthIs :: Int -> [a] -> Bool
lengthIs l = (== l) . length

consBy :: Int -> [a] -> [[a]]
consBy size xs@(_:rest)
  | size >= length xs  = [xs]
  | otherwise          = take size xs : consBy size rest
