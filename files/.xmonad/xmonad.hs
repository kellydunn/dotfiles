import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

main = do
     xmonad $ defaultConfig
            { normalBorderColor  = "#444444"
            , focusedBorderColor = "#90FFA4" }