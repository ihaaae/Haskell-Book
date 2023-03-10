module EnumFromTo where

eftBool :: Bool -> Bool -> [Bool]
eftBool start end
    | start > end = []
    | otherwise = start : eftBool (succ start) end

eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd start end
    | start > end = []
    | otherwise = start : eftOrd (succ start) end

eftInt :: Int -> Int -> [Int]
eftInt start end
    | start > end = []
    | otherwise = start : eftInt (succ start) end

eftChar :: Char -> Char -> [Char]
eftChar start end
    | start > end = []
    | otherwise = start : eftChar (succ start) end