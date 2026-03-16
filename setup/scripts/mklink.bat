@echo on

:: Komorebi
del %userprofile%\komorebi.json
del %userprofile%\applications.jon
del %userprofile%\.config\whkdrc
mklink %userprofile%\komorebi.json %userprofile%\.windots\komorebi\komorebi.json
mklink %userprofile%\applications.json %userprofile%\.windots\komorebi\applications.json
mklink %userprofile%\.config\whkdrc %userprofile%\.windots\komorebi\whkdrc

:: Yasb
del %userprofile%\.config\yasb\config.yaml
del %userprofile%\.config\yasb\styles.css
mkdir %userprofile%\.config\yasb\
mklink %userprofile%\.config\yasb\config.yaml %userprofile%\.windots\yasb\config.yaml
mklink %userprofile%\.config\yasb\styles.css %userprofile%\.windots\yasb\styles.css

:: NeoVim
del %localappdata%\nvim\init.vim
del %localappdata%\nvim\init.lua
rd %localappdata%\nvim\lua
mkdir %localappdata%\nvim\
mklink %localappdata%\nvim\init.lua %userprofile%\.windots\nvim\init.lua
mklink /d %localappdata%\nvim\lua %userprofile%\.windots\nvim\lua

:: WezTerm
del %userprofile%\.wezterm.lua
mklink %userprofile%\.wezterm.lua %userprofile%\.windots\wezterm\.wezterm.lua

:: nushell
rd %appdata%\nushell\
mklink /d %appdata%\nushell %userprofile%\.windots\nushell

:: yazi
rd %appdata%\yazi\config\
mkdir %appdata%\yazi\
sudo mklink /d %appdata%\yazi\config\ %userprofile%\.windots\yazi\
