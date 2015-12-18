module Main where

import Perception

main :: IO ()
main = do
  putStrLn "hello world"
  putStrLn (show One)
  putStrLn (show Zero)
  putStrLn (show None)
  let a = One
  let b = None
  putStrLn ( "a ~~ b = " ++ (show (a ~~ b)))
