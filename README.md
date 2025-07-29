# GeniePlus Hotkeys
A set of hotkeys designed for efficient use of the browser-based library software GeniePlus.
- Intended for use on the **Circulation** page.
- Only available for Windows.
- Will only work in **Microsoft Edge** (See "Changing browser").
- Feel free to print [this image](https://github.com/cyanisntblue/genieplus-hotkeys/blob/b38964b578343cde18e25149d7679a354563452a/tape%20to%20keyboard.png) and attach it to the keyboard for reference.
- It will look like things are being typed in the address bar and moving fast, this is normal (See Notes).

## Hotkeys

1. Check In - Activated using the `Print Screen` key.
2. Check Out - Activated using the `Scroll Lock` key.
3. Clear Form - Activated using the `Pause Break` key.

## Installation
1. Download and install [AutoHotkey v2.0](https://www.autohotkey.com/) (Only available for Windows)
2. Download [`GeniePlus Hotkeys.ahk`](https://github.com/cyanisntblue/genieplus-hotkeys/blob/b38964b578343cde18e25149d7679a354563452a/GeniePlus%20Hotkeys.ahk)
3. Open a run dialog by pressing `Win + R`
4. Enter `shell:startup` in the run dialog and click OK, the "Startup" folder should open
5. Place `GeniePlus Hotkeys.ahk` in the startup folder

On the next restart, the hotkeys above will remap to their corresponding actions (Can be activated immediately by double-clicking `GeniePlus Hotkeys.ahk`). You'll know it's running if a green H icon was added to your system tray.

## If you are using Windows 11
The `Print Screen` key is mapped to the snipping tool by default and will not work out of the box with this script.

To un-link the `Print Screen` key go to Settings > Accessibility > Keyboard > Turn OFF “Use the Print screen key to open screen capture”.

The snipping tool can still be activated with `Win + Shift + S`.


## Changing browser
This script is designed to only activate when Microsoft Edge is active. This is to prevent accidental random input in other programs. If a different browser is preferred, open `shell:startup` and right click `GeniePlus Hotkeys.ahk` and open it in notepad. On the second line, replace `msedge.exe` with your browser of choice (Google Chrome would be `chrome.exe`) and save the file.

## Notes
This script interacts with the buttons on screen through the URL bar. By typing `javascript:` the browser will execute whatever follows (test it by typing `javascript:alert("Hello");`). This script interacts with the buttons by inputting their element IDs through this method, using the clipboard for rapid entry. One caveat of this is that chromium based browsers don't let you paste the string `javascript:` into the URL bar for security reasons, which I got around by (sorry!) typing "javascript:" very quickly before pasting the element ID. This does add time in execution but is unavoidable, at least with the current approach.
