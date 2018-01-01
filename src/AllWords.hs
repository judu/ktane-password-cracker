module AllWords
   ( allWords,
     allowedLetters,
     possibleNthLetters,
     firstLetterAllowed,
     secondLetterAllowed,
     thirdLetterAllowed,
     fourthLetterAllowed,
     lastLetterAllowed,
   ) where

allWords :: [String]
allWords = [ "about","after","again","below","could",
         "every","first","found","great","house",
         "large","learn","never","other","place",
         "plant","point","right","small","sound",
         "spell","still","study","their","there",
         "these","thing","think","three","water",
         "where","which","world","would","write"]

firstLetterAllowed :: [Char]
firstLetterAllowed = ['a','b','c','e','f','g','h','l','n','o','p','r','s','t','w']

secondLetterAllowed :: [Char]
secondLetterAllowed = ['a','b','e','f','g','h','i','l','m','o','p','r','t','v']

thirdLetterAllowed :: [Char]
thirdLetterAllowed = ['a','e','g','h','i','l','o','r','t','u','v']

fourthLetterAllowed :: [Char]
fourthLetterAllowed = ['a','c','d','e','g','h','i','l','n','o','r','s','t','u']

lastLetterAllowed :: [Char]
lastLetterAllowed = ['d','e','g','h','k','l','n','r','t','w','y']

allowedLetters :: [String]
allowedLetters = [firstLetterAllowed, secondLetterAllowed, thirdLetterAllowed, fourthLetterAllowed, lastLetterAllowed]

possibleNthLetters :: [Char] -> [Char] -> [Char]
possibleNthLetters allowed ls = [ l | l <- ls, l `elem` allowed ]

