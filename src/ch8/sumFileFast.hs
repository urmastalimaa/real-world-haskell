import qualified Data.ByteString.Lazy.Char8 as L
import Data.Maybe (mapMaybe)

getNumbers = map fst .
             mapMaybe L.readInt .
             L.words .
             head .
             L.lines

main = do
  contents <- L.getContents
  print . sum . getNumbers $ contents
