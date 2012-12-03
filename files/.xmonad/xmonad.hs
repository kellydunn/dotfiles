import XMonad
import XMonad.Layout
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

main = do
     xmproc <- spawnPipe "/usr/bin/xmobar /home/kelly/.xmobarrc"
     xmonad $ defaultConfig
            { normalBorderColor  = "#444444"
            , focusedBorderColor = "#90FFA4" 
            , manageHook = manageDocks
            , layoutHook = avoidStruts $ layoutHook defaultConfig
            }