import           System.Environment             ( getArgs )

primes :: Integral a => a -> [a]
primes n = [ x | x <- [1 .. n], factors x == [1, x] ]
  where factors n = [ x | x <- [1 .. n], n `mod` x == 0 ]

main :: IO ()
main = do
  args <- getArgs
  print (primes (read (head args) :: Integer))
