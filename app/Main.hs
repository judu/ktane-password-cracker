module Main where

import Lib

main :: IO ()
main = do
   putStrLn "First letters"
   f <- getLine
   putStrLn "Second letters"
   s <- getLine
   putStrLn "Third letters"
   t <- getLine
   putStrLn "Fourth letters"
   a <- getLine
   putStrLn "Last letters"
   l <- getLine
   putStrLn "Possible passwords are:"
   putStrLn $ foldl (\x y -> x ++ "\n\t" ++ y) "" $ possibleWords f s t a l
