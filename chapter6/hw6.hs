module Hw6 where
import GHC.Exts.Heap (GenClosure(BlackholeClosure))

data TisAnInteger = 
    TisAn Integer

instance Eq TisAnInteger where
    (==) (TisAn integer)
         (TisAn integer') = 
        integer == integer'

data TwoIntegers = 
    Two Integer Integer

instance Eq TwoIntegers where
    (==) (Two int1 int2) (Two int1' int2') =
        (int1 == int1') && (int2 == int2')

data StringOrInt = 
    TisAnInt Int
  | TisAString String

instance Eq StringOrInt where
    (==) (TisAnInt int) (TisAnInt int') =
        int == int'
    (==) (TisAString string) (TisAString string') = 
        string == string'
    (==) _ _ = False

data Pair a = 
    Pair a a

instance Eq a => Eq (Pair a) where
    (==) (Pair a b)
         (Pair a' b') = 
        (a == a') && (b == b')

data Tuple a b = 
    Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
    (==) (Tuple a b)
         (Tuple a' b') = 
        (a == a') && (b == b')

data Which a = 
    ThisOne a
  | ThatOne a

instance Eq a => Eq (Which a) where
    (==) (ThisOne a) (ThisOne a') = a == a'
    (==) (ThatOne a) (ThatOne a') = a == a'
    (==) _ _ = False

data EitherOr a b = 
    Hello a
  | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
    (==) (Hello a) (Hello a') = a == a'
    (==) (Goodbye b) (Goodbye b') = b == b'
    (==) _ _ = False

data Person = Person Bool

instance Show Person where
    show (Person True) = "True"
    show (Person False) = "False"

printPerson :: Person -> IO ()
printPerson person = putStrLn (show person)

data Mood = Blah
          | Woot deriving (Eq, Show)

settleDown x = if x == Woot
                then Blah
                else x

type Subject = String
type Verb = String
type Object = String

data Sentence = 
  Sentence Subject Verb Object
  deriving (Eq, Show)

s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves" "dogs"

data Rocks = 
  Rocks String deriving (Eq, Show)

data Yeah = 
  Yeah Bool deriving (Eq, Show)

data Papu = 
  Papu Rocks Yeah deriving (Eq, Show)

chk :: Eq b => (a -> b) -> a -> b -> Bool
chk aToB a b = (aToB a) == b

arith :: Num b => (a -> b) -> Integer -> a -> b
arith aToB int a = (aToB a) + fromInteger int