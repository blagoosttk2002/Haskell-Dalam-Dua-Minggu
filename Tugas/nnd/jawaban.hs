-- First Assignment
-- Reimplement Haskell function
-- DON'T USE GOOGLE
module Jawaban where

import Data.List

-- 1.a

-- Difficulty: Easy
myNull [] = True
myNull (x:xs) = False

--pembatas

-- Difficulty: Medium
myTake 0 _ = []
myTake m [] = []
myTake m (x:xs) = [x] ++ myTake (m-1) (xs)

--pembatas

-- Difficulty: Medium
myDrop m [] = []
myDrop 0 (x:xs) = (x:xs)
myDrop m (x:xs) = myDrop (m-1) (xs)

--pembatas

-- Difficulty: Very Easy
myFst (a,b) = a

--pembatas

-- Difficulty: Very Easy
mySnd (a,b) = b

--pembatas

-- Difficulty: Hard
map' x = x

--pembatas

-- Difficulty: Hard
filter' x = x

--pembatas

-- Difficulty: Medium
myDelete m [] = []
myDelete m (x:xs) 
    |m /= x = [x] ++ myDelete m xs  -- kalau udah pakai guard gausah pakai if
    |m == x = xs

--pembatas

-- Difficulty: Medium
myDeleteAll m [] = []
myDeleteAll m (x:xs) 
    |m /= x = [x] ++ myDeleteAll m xs
    |m == x = myDeleteAll m xs

--pembatas

-- Difficulty: Hard
foldl' x = x

--pembatas

-- Difficulty: Hard
foldl1' x = x

--pembatas

-- Difficulty: Medium
zip' x = x

--pembatas

-- Difficulty: Hard
zipWith' x = x

--pembatas

-- Difficulty: Easy
nth' x = x

--pembatas

-- Difficulty: Hard
scanl' x = x

--pembatas

-- Difficulty: Hard
scanl1' x = x

--pembatas

-- Difficulty: Hard
elem' x = x

--pembatas

-- Difficulty: Hard
notElem' x = x

--pembatas

-- Difficulty: Very Easy
head' x = x

--pembatas

-- Difficulty: Medium
length' x = x

--pembatas

-- Difficulty: Medium
reverse' x = x

--pembatas

-- Difficulty: Very Easy
last' x = x

--pembatas

-- Difficulty: Very Easy
tail' x = x

--pembatas

-- Difficulty: Very Easy
init' x = x

--pembatas


-- Difficulty: Easy
max' x = x

--pembatas

-- Difficulty: Easy
min' x = x

--pembatas

concat' x = x

--pembatas

intersperse' x = x

--pembatas

intercalate' x = x

--pembatas

and' x = x

--pembatas

or' x = x

--pembatas

zip3' x = x

--pembatas

sum' x = x

--pembatas

product' x = x

--very hard katanya

words' x = x

--very hard

lines' x = x

--very hard

unlines' x = x

--very hard

unwords' x = x

--pembatas

takeWhile' x = x

--pembatas

dropWhile' x = x

--pembatas

concatMap' x = x

--pembatas

all' x = x

--pembatas

any' x = x

--pembatas

insert' x = x

--pembatas

zipWith3' x = x

--pembatas

-- 1.b

nub' x = x

--pembatas

sort' x = x

--pembatas

minimum' x = x

--pembatas

maximum' x = x

--pembatas

inits' x = x

--pembatas

tails' x = x

--very hard

union' x = x

--pembatas

intersect' x = x

--very hard

group' x = x

--pembatas

splitAt' x = x

--pembatas

partition' x = x

--pembatas

replicate' x = x

--pembatas
-- First Assignment
-- Reimplement Haskell function
-- DON'T CHEAT
