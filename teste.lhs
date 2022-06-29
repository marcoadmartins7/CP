\begin{code}
module Teste where
import Cp
import List hiding (fac)
import Nat hiding (aux)
import LTree
import FTree
import BTree
import Data.List hiding (find)
import Svg hiding (for)
import Control.Monad
import Control.Applicative hiding ((<|>))
import System.Process
import Data.Char
import Probability hiding (scale)


alice :: Ord c => LTree c -> c
alice (Leaf x) = x
alice (Fork(x,y)) = umax(alice(x),alice(y))

umin :: Ord a => (a,a) -> a
umin = uncurry min

bob :: Ord c => LTree c -> c
bob (Leaf x) = x
bob (Fork(x,y)) = umin(bob(x),bob(y))

\end{code}
