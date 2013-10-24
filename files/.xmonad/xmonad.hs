import XMonad
import XMonad.Core
import XMonad.Layout
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO
import XMonad.Actions.MouseGestures
import qualified XMonad.StackSet as W
import qualified Data.Map as M

main = do
     xmproc <- spawnPipe "/usr/bin/xmobar /home/kelly/.xmobarrc"
     xmonad $ defaultConfig
            { normalBorderColor  = "#444444"
            , focusedBorderColor = "#90FFA4" 
            , manageHook = manageDocks
            , layoutHook = avoidStruts $ layoutHook defaultConfig
            , terminal = "xterm"
            }