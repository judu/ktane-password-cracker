module With3Letters
    ( possibleWithNLetters
    ) where

import AllWords

cartprod :: [[a]] -> [[a]]
cartprod [] = [[]]
cartprod (xs:xss) = [x:ys | x <- xs, ys <- yss] where yss = cartprod xss

allowed3Letters :: [String]
allowed3Letters = [firstLetterAllowed, thirdLetterAllowed, lastLetterAllowed]

filterNLetters :: [String] -> [String]
filterNLetters fml = zipWith ($) (map possibleNthLetters allowed3Letters) fml

filter3Letters :: String -> String -> String -> [String]
filter3Letters f m l = zipWith ($) (map possibleNthLetters allowed3Letters) [f,m,l]

calculatePossibilities :: String -> String -> String -> [String]
calculatePossibilities fs ms ls  = [ [f,m,l] | f <- fs, m <- ms, l <- ls ]

zz :: Eq a => [a] -> [b] -> [a]
zz as bs = fst $ unzip $ zip as bs

testWord :: Eq b => [a] -> [[b]] -> [b] -> Bool
testWord fml words [f,_,m,_,l] = elem (zz [f,m,l] fml) words

possibleWithNLetters :: [String] -> [String]
possibleWithNLetters fml =
   let words = cartprod $ filterNLetters fml
   in filter (testWord fml words) allWords
