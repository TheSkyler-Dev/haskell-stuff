import Prelude
import System.IO

pi = 3.14159265358979323846 --predefine pi globally
barrelVolume :: Double -> Double -> Double
barrelVolume r h = Main.pi * r**2 * h

barrelSurface :: Double -> Double -> Double
barrelSurface r h = 2 * Main.pi * r * (r + h)

main :: IO() -- main function: Takes user input and calculates volume and surface area of given barrel
main = do
    putStrLn "Enter base radius of the barrel: "
    barrelRadius <- getLine
    putStrLn "Enter height of the barrel: "
    barrelHeight <- getLine
    let r = read barrelRadius :: Double
    let h = read barrelHeight :: Double
    let volume = barrelVolume r h
    let surface = barrelSurface r h

    putStrLn $ "Base radius of the barrel: " ++ show r
    putStrLn $ "Height of the barrel: " ++ show h
    putStrLn $ "Volume of the barrel: " ++ show volume
    putStrLn $ "Surface area of the barrel: " ++ show surface
    putStrLn "Done!"