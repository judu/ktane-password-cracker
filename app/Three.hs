module Three where

import With3Letters

printWords :: [String] -> IO ()
printWords words = putStrLn $ foldr (\x y -> y ++ "\t" ++ x) "" words

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
