{-

A common practice in many Haskell applications is to define a
helper module for each project that provides commonly needed
imports. The purpose of this module is purely convenience.

-}
module Import
    ( module Import
    , module X
    ) where

import           Data.Default
import           Foundation          as X
import           Language.Haskell.TH
import           Yesod               as X
import           Yesod.Default.Util
import           Yesod.Form.Jquery   as X (urlJqueryJs)

widgetFile :: FilePath -> ExpQ
widgetFile = widgetFileReload def

{- my experiments

getDomeR :: Handler Html
-- defaultLayout uses the application's standard page layout to display
-- some contents. In our application, we're just using the standard
-- layout, which includes a basic HTML 5 page outline.
getDomeR = defaultLayout $ do
    setTitle "Yesod Web Service Homepage"
    
data MyApp = MyApp
instance Yesod MyApp
mkYesodData "MyApp" [parseRoutes|
/         DomeR     GET
|]

-- bubb = warpEnv
-- main :: IO ()
-- main = warpEnv App
-}
