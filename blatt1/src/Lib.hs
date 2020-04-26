-- / A Lib Module
module Lib
    ( someFunc,
      square,
      ggT
    ) where

-- / Beeing useless just like me
someFunc :: IO ()
someFunc = putStrLn "someFunc"


-- / Calc the Square of the given Number
square :: Num a => a -- ^ number
 -> a -- Square
square a = a*a

ggT :: Integer -> Integer -> Integer
ggT a b = calcGGT (abs a) (abs b) 


calcGGT :: Integer -> Integer -> Integer
calcGGT a b = if a == 0
    then b 
    else
        if b == 0
            then a 
            else if a > b 
                then ggT (a-b) b
                else ggT (b-a) a      