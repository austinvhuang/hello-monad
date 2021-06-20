module Main where

import Data.Monoid ((<>))
import Control.Monad.Writer

doWriter1 :: String -> Writer String ()
doWriter1 content = do
  tell "log start:\n"
  tell content
  
doWriter2 :: String -> Writer String ()
doWriter2 content = do
  tell "appending:\n"
  tell content
  
doBoth :: Writer String ()
doBoth = do
  doWriter1 "hello\n"
  doWriter2 "bye\n"

main :: IO ()
main = do
  let (_, value) = runWriter doBoth
  putStrLn value
