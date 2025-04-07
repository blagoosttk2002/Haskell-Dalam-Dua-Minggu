--source code
module Welcome where --nama module. harus banget pake ini di awal, !!! nama file harus sama dengan nama modul
import Data.List
hello = "hello world" -- function

kuadrat nanda =nanda*nanda --tipe data number
x=2

myTake 0 _ = []
myTake m [] = []
myTake m (x:xs) = [x] ++ myTake (m-1) (xs)

-- myTake 3 (1:2,3,4,5,6,7,8,9,10) =  myTake 3 ++ myTake (3-1) (1:2,3,4,5,6,7,8,9,10) -- hipotesis 1

-- myTake 3 (1:2,3,4,5,6,7,8,9,10) =  myTake 3 (1:2,3,4,5,6,7,8,9,10) ++ myTake (3-1) (1:2,3,4,5,6,7,8,9,10) -- hipotesis 2

-- myTake 3 (1:2,3,4,5) = [1] ++ myTake (3-1) (2,3,4,5) = [1] ++ myTake 2 (2,3,4,5) | [1,2,3] -- hipotesis 3
-- myTake 2 (2:3,4,5) = [2] ++ myTake (2-1) (3,4,5)= [2] ++ myTake 1 (3,4,5) | [2,3]
-- myTake 1 (3:4,5) = [3] ++ myTake (1-1) (4,5) = [3] ++ myTake 0 (4,5) | [3]
-- myTake 0 (4:5) = []

-- Drop
myDrop m [] = []
myDrop 0 (x:xs) = (x:xs)
myDrop m (x:xs) = myDrop (m-1) (xs)

-- myDrop 3 (1:2,3,4,5) = myDrop (3-1) (2,3,4,5) = myDrop 2 (2,3,4,5) = [4,5]
-- myDrop 2 (2:3,4,5) = myDrop (2-1) (3,4,5) = myDrop 1 (3,4,5) = [4,5]
-- myDrop 1 (3:4,5) = myDrop (1-1) (4,5) = myDrop 0 (4,5) = [4,5]

-- length
myLength [] = 0
-- myLength (x:xs) = myLength (xs) + x

--myLength (1:[2,3,4,5]) = myLength [2,3,4,5] + 1 | 14 +1 = 15
--myLength (2:[3,4,5]) = myLength [3,4,5] + 2 | 12 + 2 = 14
--myLength (3:[4,5]) = myLength [4,5] + 3 | 9 + 3 = 12
--myLength (4:[5]) = myLength [5] + 4 | 5 + 4 = 9
--myLength (5:[]) = myLength [] + 5 | 0 + 5 =  5
--myLength [] = 0

myLength (x:xs) = myLength (xs) + 1

--myLength (1:[2,3,4,5]) = myLength [2,3,4,5] + 1 | 4 +1 = 5
--myLength (2:[3,4,5]) = myLength [3,4,5] +1 | 3 +1 = 4
--myLength (3:[4,5]) = myLength [4,5] + 1 | 2 + 1= 3
--myLength (4:[5]) = myLength [5] + 1 | 1 + 1 = 2
--myLength (5:[]) = myLength [] + 1 | 0 + 1 =  1
--myLength [] = 0

--Delete 1 aja
myDelete m [] = []
myDelete m (x:xs) 
    |m /= x = [x] ++ myDelete m xs  -- kalau udah pakai guard gausah pakai if
    |m == x = xs

-- Delete all
myDeleteAll m [] = []
myDeleteAll m (x:xs) 
    |m /= x = [x] ++ myDeleteAll m xs
    |m == x = myDeleteAll m xs

-- fst
myFst = 