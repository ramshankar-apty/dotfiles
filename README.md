# .dotfiles

My config files for macOS.

### Apps

- [Arc Browser](https://arc.net/) - Web browser
- [warp terminal](https://www.warp.dev/) - Terminal with AI capabilities
- [VS Code](https://code.visualstudio.com/download) - VS Code editor
- [Raycast](https://www.raycast.com/)
- [Orbstack](https://orbstack.dev/) - 
- [Obsidian](https://obsidian.md/download) - Note-taking app
- [Yaak](https://yaak.app/) or [Postman](https://www.postman.com/) - Tool for making HTTP requests
- [Spacedrive](https://www.spacedrive.com/) - Univeral file manager


### Office Specific Apps

- [Dr.Sprinto**](https://sprinto.com/) 
- [Microsoft Teams](https://www.microsoft.com/en-in/microsoft-teams/download-app)
- [Microsoft Outlook](https://outlook.office.com)
- [Gather](https://app.gather.town/app)

** - Will be installed by an IT admin.

```sh
# To run a shell file, run the below script
xattr -d com.apple.quarantine ./<SCRIPT_NAME>.sh

# Enable Rosetta (Reference: https://devzilla.io/using-nodejs-14-with-mac-silicon-m1)
/usr/sbin/softwareupdate --install-rosetta --agree-to-license
echo "search for terminal in applications > get info > open terminal with Rosetta"

# Install cli tools after installing xcode for node-gyp
xcode-select --install

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install btop
brew install btop
echo "installed btop"

# Install lsd
brew install lsd
echo "Installed lsd: a better `ls` command"

# Install oh-my-posh
brew install jandedobbeleer/oh-my-posh/oh-my-posh
echo "installed oh-my-posh"

# Install meslo font (VSCode: "terminal.integrated.fontFamily": "MesloLGM Nerd Font")
oh-my-posh font install meslo
echo "installed meslo nerd font"
```

### Setup pgAdmin

Create a new server with the details below. All the database schema's will be available in this server.
```
name - postgres
Host Name/Adddress - localhost
Port - 5432
Username - postgres
```

- [Solve dyld library not loaded](https://gist.github.com/berkedel/d1fc6d13651c16002f64653096d1fded)

### Issues you may run into

The issues here are mostly focused towards Apple silicon chips.

#### 1. Installing Node.js 14 in Apple Silicon

You can refer this [stackoverflow thread](https://stackoverflow.com/questions/65342769/install-node-on-m1-mac) to enable rosetta on mac.
You might have to enable Rosetta in the terminal by enabling it in terminal's `get info` panel.

#### 2. dyld <version> not loaded
This is dependency that node uses. You can check out this [gist](brew uninstall --ignore-dependencies node icu4c
brew install node) to uninstall icu4c which contains dyld or reinstall it.
