module McCarthy91 where

mc91 :: Integral a => a -> a
mc91 a 
    | a > 100 = a - 10
    | otherwise = mc91 (mc91 (a + 11))