josephusHelper :: Integer -> Integer
josephusHelper 1 = 0
josephusHelper n
    | n `mod` 2 == 0 = 2 * josephusHelper (n `div` 2)
    | otherwise = 2 * (1 + josephusHelper (n `div` 2))

josephus :: Integer -> Integer
josephus = (+1) . josephusHelper