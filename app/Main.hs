module Main (main) where

import Lib

main :: IO ()

main = do
  let entering = [Entrant {entrantId="1", name="jerry"}, Entrant {entrantId="2", name="harry"}, Entrant {entrantId="3", name="merry"}, Entrant {entrantId="4", name="barry"}]
  winner <- drawLotto (Lotto {lottoId="1", entrants=entering })
  print winner