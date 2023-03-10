{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineTheType where

example = 1

a = (* 9) 6
-- Num
b = head [(0, "doge"), (1, "kitteh")]
-- (Num, [Char])
c = head [(0 :: Integer, "doge"), (1, "kitteh")]
-- (Integer, [Char])
d = if False then True else False
-- Bool
e = length [1, 2, 3, 4, 5]
-- Int
f = (length [1, 2, 3, 4]) > (length "TACOCAT")
-- Bool

w :: Num a => a
w         = y * 10
  where y = x + 5
        x = 5
-- Num

x = 5
y = x + 5
z y = y * 10
-- Num -> Num

f1 = 4 / y
-- Fractional a => a

x1 = "Julie"
y1 = " <3"
z1 = "Haskell"
f2 = x1 ++ y1 ++ z1
-- [Char]
