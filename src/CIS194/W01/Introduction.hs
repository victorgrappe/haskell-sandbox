module CIS194.W01.Introduction where

-- "Int" is guaranteed by the Haskell language standard to accommodate values at least up to max size depending on the architecture (2^32, 2^64)
x :: Int
x = 3

i :: Int
i = -78

biggestInt, smallestInt :: Int
biggestInt = maxBound
smallestInt = minBound

-- "Integer" has no size limit but is slower
nolimitInteger :: Integer
nolimitInteger = 1234567890987654321987340982334987349872349874534

reallyBig :: Integer
reallyBig = (2 :: Integer) ^ ((2 :: Integer) ^ ((2 :: Integer) ^ ((2 :: Integer) ^ (2 :: Integer))))

numOfDigits :: Int
numOfDigits = length (show reallyBig)

-- "Float" = simple presision floating point value
f1, f2 :: Double
f1 = 4.5387
f2 = 6.2831e-4

-- "Double" = double presision floating point value
d1, d2 :: Double
d1 = 4.5387
d2 = 6.2831e-4

-- "Bool"
b1, b2 :: Bool
b1 = True
b2 = False

-- "Char" = Unicode characters
c1, c2, c3 :: Char
c1 = 'x'
c2 = 'Ø'
c3 = 'ダ'

-- "String" = list of characters with special syntax
s :: String
s = "Hello, Haskell!"

-- Pair
p :: (Int, Char)
p = (3, 'x')

sumPair :: (Int, Int) -> Int
sumPair (x, y) = x + y

-- List
nums, range, range2 :: [Integer]
nums = [0, 1, 2, 3]
range = [1 .. 100]
range2 = [2, 4 .. 100]

hello1 :: [Char]
hello1 = ['H', 'e', 'l', 'l', 'o']

hello2 :: String
hello2 = "Hello"

-- Function
sumtorial :: Integer -> Integer
sumtorial 0 = 0
sumtorial n = n + (sumtorial (n - 1))

hailstone :: Integer -> Integer
hailstone n
  | n `mod` 2 == 0 = 0 `div` 2
  | otherwise = 3 * n + 1

foo :: Integer -> Integer
foo 0 = 16
foo 1
  | "Haskell" > "C++" = 3
  | otherwise = 4
foo n
  | n < 0 = 0
  | n `mod` 17 == 2 = -43
  | otherwise = n + 3

isEven :: Integer -> Bool
isEven n
  | n `mod` 2 == 0 = True
  | otherwise = False

f :: Int -> Int -> Int -> Int
f x y z = x + y + z

intListLength :: [Integer] -> Integer
intListLength [] = 0
intListLength (_ : xs) = 1 + intListLength xs