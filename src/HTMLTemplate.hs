import System.IO  
import Data.List.Split
  
main = htmlTemplate "HTMLExample.html"


htmlTemplate iFile = do  
   handle <- openFile iFile ReadMode  
   let splitFile = splitOn "." iFile
   let oFile = splitFile!!0 ++ "Out." ++ splitFile!!1
   handleOut <- openFile oFile WriteMode
   contents <- hGetContents handle  
   hPutStr handleOut contents
   hClose handle
   hClose handleOut
