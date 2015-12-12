module Mean where

mean:: Integral a => [a] -> Double
mean xs = fromIntegral (sum xs) / fromIntegral (length xs)
