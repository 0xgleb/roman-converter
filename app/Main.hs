module Main where

import           Safe

import           Converter (convert)

main :: IO ()
main = do
    putStrLn "Enter a positive integer: "
    getLine >>= putStrLn
              . either ("Error: " ++) id
              . maybe (Left "Invalid input!") convert
              . readMay
