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

-- Arithmetic
ex01 = 3 + 2

ex02 = 19 - 27

ex03 = 2.35 * 8.6

ex04 = 8.7 / 3.1

ex05 = mod 19 3

ex06 = 19 `mod` 3

ex07 = 7 ^ 222

ex08 = (-3) * (-7)
