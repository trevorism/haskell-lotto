module Lib
  ( Lotto(..),
    Entrant(..),
    Winner,
    drawLotto,
  )
where

import Control.Monad.Random
   
data Lotto = Lotto
  { lottoId :: String,
    entrants :: [Entrant]
  }

data Entrant = Entrant
  { entrantId :: String,
    name :: String
  }deriving (Show)

data Winner = Winner
  { winner :: Entrant,
    amount :: Int
  } deriving (Show)

drawLotto :: Lotto -> IO Winner
drawLotto (Lotto _ y) = do
  index <- evalRandIO (getRandomR (0, length y - 1))
  return Winner {winner = y !! index, amount = length y}


