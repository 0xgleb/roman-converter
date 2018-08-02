{-# LANGUAGE BangPatterns #-}

module Converter (convert) where

criticalNumbers :: [(Int, String)]
criticalNumbers =
  [ (1, "I")
  , (4, "IV")
  , (5, "V")
  , (9, "IX")
  , (10, "X")
  , (40, "XL")
  , (50, "L")
  , (90, "XC")
  , (100, "C")
  , (400, "CD")
  , (500, "D")
  , (900, "CM")
  , (1000, "M")
  ]

convertNumber :: [(Int, String)] -> String -> Int -> String
convertNumber representations !accum n
  | n == 0 = accum
  | otherwise = convertNumber smallerRepresentations (accum ++ snd biggestCrit) (n - fst biggestCrit)
  where smallerRepresentations = takeWhile ((<= n) . fst) representations
        biggestCrit = last smallerRepresentations

convert :: Int -> Either String String
convert n
  | n <= 0 = Left "The integer must be positive!"
  | otherwise = Right $ convertNumber criticalNumbers "" n
