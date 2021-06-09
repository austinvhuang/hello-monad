module Main where

import Data.Monoid ((<>))
import Control.Monad.Writer

newtype Log = Log { logContent :: String }

doWriter1 :: String -> Writer String ()
doWriter1 content = do
  tell "log start:\n"
  tell content
  
doWriter2 :: String -> Writer String ()
doWriter2 content = do
  tell content
  tell "foo\n"
  tell "bar\n"
  tell "baz\n"
  
doBoth :: Writer String ()
doBoth = do
  doWriter1 "hello\n"
  doWriter2 "hi\n"

main :: IO ()
main = do
  let initial = Log ""
  let (_, value) = runWriter doBoth
  putStrLn value
