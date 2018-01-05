module With3Letters
    ( possibleWithNLetters
    ) where

import AllWords


-- | Cartesian product of undefined number of sets.
cartprod :: [[a]] -> [[a]]
cartprod [] = [[]]
cartprod (xs:xss) = [x:ys | x <- xs, ys <- yss] where yss = cartprod xss

allowed3Letters :: [String]
allowed3Letters = [firstLetterAllowed, thirdLetterAllowed, lastLetterAllowed]

-- | Here, I using the fact that zip [a,b,c] [1,2] will return [(a,1),(b,2)] and be the size
-- | of the smallest list.
filterNLetters :: [String] -> [String]
filterNLetters fml = zipWith ($) (map possibleNthLetters allowed3Letters) fml

-- | We take two lists and return the first one truncated to the size of the second one.
-- | zz as bs = take (length bs) as // But we use pointfree because we want to feel smart.
-- | And we do.
zz :: [a] -> [b] -> [a]
zz = flip (take . length)

-- | This function is "tricky" and maybe not that smart:
-- | The first parameter is only here for length:
-- | 'fmls' is the list of sets of possible letters we have for each position.
-- | We use 'zz' (see above) with it just to truncate the f+m+l "words" to the number of
-- | chars we have for now.
-- | 'words' is the list of words we want to test against the reference.
-- | The third parameter is the current word we are testing. It *is* the reference.
testWord :: Eq b => [a] -> [[b]] -> [b] -> Bool
testWord fmls words [f,_,m,_,l] = elem (zz [f,m,l] fmls) words

-- | Sum up everything:
-- | Calcutate all the words we can generate from given letters,
-- | then compare them with the reference words.
possibleWithNLetters :: [String] -> [String]
possibleWithNLetters fmls =
   let words = cartprod $ filterNLetters fmls
   in filter (testWord fmls words) allWords
