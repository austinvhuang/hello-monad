module Main where

import Control.Monad.Reader

data Config = Config {
  count :: Int
  } deriving Show

getConfig :: IO Config
getConfig = pure Config { count=1 }

incrementBy :: Int -> Reader Config Int
incrementBy increment = do
  cnt <- asks count
  pure $ cnt + increment

main :: IO ()
main = do
  config <- getConfig
  let value = runReader (incrementBy 3) config
  print config -- prints Config {count = 1}
  print value -- prints 4
