module DividedBy where

data DividedResult = Result Integer | DividedByZero
dividedBy :: Integral a => a -> a -> DividedResult
dividedBy num denom
    | denom == 0 = DividedByZero
    | denom > 0 && num >= 0 = 
        let go n d count = 
                if n < d
                then Result count
                else go (n - d) d (count + 1)
        in go num denom 0
    | denom > 0 = 
        let go n d count = 
                if n > 0
                then Result count
                else go (n + d) d (count - 1)
        in go num denom 0
    | num >= 0 = 
        let go n d count = 
                if n < 0
                then Result count
                else go (n + d) d (count - 1)
        in go num denom 0
    | otherwise = 
        let go n d count = 
                if n > d
                then Result count
                else go (n - d) d (count + 1)
        in go num denom 0
