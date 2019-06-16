import System.Environment
import System.Directory
import Data.List
import System.IO
import Data.Char
import Control.Monad 
import Data.Ord
import Text.Show

size :: [String] -> String -> [String]
size a b = 
     filter ((== x) . length) a
     where x = length b

inList :: [String] -> String -> [String]
inList a b = 
          filter (\x -> x `elem` [b]) (a)

rearrangement :: Ord a => [a] -> [a]
rearrangement a  = 
              sort a

anagrams :: [String] -> String -> String
anagrams n [] = []
anagrams [] xs = []
anagrams (x:xs) n = 
         if first == second then x ++ code 
         else code
         where code = anagrams xs n 
               order = map toLower n
               inOrder = map toLower x
               first = sort order
               second = sort inOrder

chunk :: Int -> [a] -> [[a]]
chunk _ [] = []
chunk n xs = y1 : chunk n y2
      where (y1, y2) = splitAt n xs
            cite = "wiki.haskell.org/Data.List.Split"

main = do   
    parms <- getArgs
    let firstParm = head parms
    let secondParm = last parms
    contents <- readFile firstParm
    let newParm = lines contents
    let long = length secondParm
    let relevant = size newParm secondParm
        choices = anagrams newParm secondParm
        correct = chunk long choices
    putStr(" The anagrams of " ++ secondParm ++ " are " ++ show(correct))
