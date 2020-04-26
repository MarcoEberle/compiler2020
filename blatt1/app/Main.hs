module Main where

import Lib(someFunc,square)
import System.IO (BufferMode (NoBuffering), hSetBuffering, stdout)

main = do
    putStr "Geben Sie bitte eine Zahl ein (0 == Ende): "
    number <- readLn :: IO Double
    if number /= 0
        then do 
        putStrLn("square(" ++ show number ++ ") = " ++ show (square number))
        main
        else putStrLn "Ciao"
    