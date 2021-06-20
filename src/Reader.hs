module Main where

import Control.Monad.Reader

data Config = Config {
  count :: Int
  } deriving Show

getConfig :: IO Config
getConfig = pure Config { count=1 }

doReader :: Int -> Reader Config Int
doReader increment = do
  cnt <- asks count
  pure $ cnt + increment

main :: IO ()
main = do
  config <- getConfig
  let value = runReader (doReader 3) config
  print config
  print value
