module Three where

import With3Letters
import Data.List

printWords :: [String] -> IO ()
printWords = putStrLn.intercalate "\t"

main :: IO ()
main = do
   putStrLn "First letters"
   f <- getLine
   putStrLn " - Possible so far:"
   printWords $ possibleWithNLetters [f]
   putStrLn "\nMiddle letters"
   t <- getLine
   putStrLn " - Possible so far:"
   printWords $ possibleWithNLetters [f,t]
   putStrLn "\nLast letters"
   l <- getLine
   putStrLn " - Possible passwords are:"
   printWords $ possibleWithNLetters [f,t,l]
