module Walk.A329233 (a329233) where
import Helpers.Grasshopper (grasshopper, Direction (..))
import Data.Maybe (fromMaybe)
import Control.Applicative ((<|>))

a329233 n = fromMaybe 0 $ grasshopper Nothing f n where
  f Counterclockwise steps x = x <|> Just (sum steps)
  f Clockwise        _     x = x  
