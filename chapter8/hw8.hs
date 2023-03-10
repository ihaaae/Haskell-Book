module Hw8 where

cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow " ++ y

flippy = flip cattyConny

appedCatty = cattyConny "woops"
frappe = flippy "haha"

sumA :: (Eq a, Num a) => a -> a
sumA 0 = 0
sumA n = n + sumA (n - 1)

product_a :: (Integral a) => a -> a -> a
product_a a 0 = 0
product_a a b = a + product_a a (b - 1)





