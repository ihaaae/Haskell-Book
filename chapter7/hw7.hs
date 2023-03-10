module Hw7 where

tensDigit :: Integral a => a -> a
tensDigit x = d2
   where (xLast, d) = divMod x 10
         (dLast, d1) = divMod xLast 10
         (d1Last, d2) = divMod dLast 10


foldBool :: a -> a -> Bool -> a
foldBool x y z =
  case z of
    True -> x
    False -> y


foldBool2 :: a -> a -> Bool -> a
foldBool2 x y z
   | z         = x
   | otherwise = y


g :: (a -> b) -> (a, c) -> (b, c)
g aToB (a, c) = (aToB a,, c)
