module EnumFromTo where

myEnumFromTo :: Enum a => a -> a -> [a]
myEnumFromTo start end 
    | fromEnum start > fromEnum end = []
    | otherwise    = start : myEnumFromTo (succ start) end