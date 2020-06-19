module Main where
import System.Process

main :: IO ()
main = do
  (hi,ho,he,p) <- createProcess $ proc "git" ["clone", "git@github.com:ndmitchell/ghcid.git"]
  putStrLn $ show (hi,ho,he)
  waitForProcess p
  putStrLn "Done"
