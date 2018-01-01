module Lib
    ( possibleWords
    ) where

import AllWords

filterAllLetters :: String -> String -> String -> String -> String -> [String]
filterAllLetters f s t a l = zipWith ($) (map possibleNthLetters allowedLetters) [f,s,t,a,l]

calculatePossibilities :: String -> String -> String -> String -> String -> [String]
calculatePossibilities fs ss ts as ls  = [ [f,s,t,a,l] | f <- fs, s <- ss, t <- ts, a <- as, l <- ls ]

possibleWords :: String -> String -> String -> String -> String -> [String]
possibleWords f s t a l =
   let [f1,s1,t1,a1,l1] = filterAllLetters f s t a l
       words = calculatePossibilities f1 s1 t1 a1 l1
   in filter (\x -> x `elem` allWords) words
