module WordNumber where

import Data.List (intersperse)

digitToWord :: Int -> String
digitToWord n =
    case n of
        0 -> "zero"
        1 -> "one"
        2 -> "two"
        3 -> "three"
        4 -> "four"
        5 -> "five"
        6 -> "six"
        7 -> "seven"
        8 -> "eight"
        9 -> "nine"
        _ -> "too large"
    

digits :: Int -> [Int]
digits n = go n []
    where go n l 
            | n < 10    = n : l
            | otherwise = let (rest, last) = divMod n 10
                          in  go rest (last:l)


wordNumber :: Int -> String
wordNumber n = concat (intersperse "-" words)
    where words = digitsToWords (digits n)
          digitsToWords digitlist =
              case digitlist of
                  []  -> []
                  a:b -> digitToWord a : digitsToWords b