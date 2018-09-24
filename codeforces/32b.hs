module Main where
import Data.Char (digitToInt)


loop :: Char -> String -> String 
loop sub 'a' = sub
loop sub (x:xs) = let sub' = x in loop sub' xs

decode :: String -> String
decode xs = loop ' ' xs


main :: IO ()
main = do 
    name <- getLine
    print (decode name)
