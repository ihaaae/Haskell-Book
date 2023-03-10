isPalindrome :: (Eq a) => [a] ->Bool 
isPalindrome x = x == reverse x

myAbs :: Integer ->Integer 
myAbs x = if x > 0 then x else -x

f:: (a, b) -> (c, d) -> ((b, d), (a, c)) 
f a b = ((snd a, snd b), (fst a, fst b))

x = (+)

fF xs = x w 1
    where w = length xs
