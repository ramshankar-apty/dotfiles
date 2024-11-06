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

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install btop
brew install btop
echo "installed btop"

# Install oh-my-posh
brew install jandedobbeleer/oh-my-posh/oh-my-posh
echo "installed oh-my-posh"


# Install meslo font (VSCode: "terminal.integrated.fontFamily": "MesloLGM Nerd Font")
oh-my-posh font install meslo
echo "installed meslo nerd font"
```


- [Installing Node.js 14 in macOS (Apple Silicon)](https://stackoverflow.com/questions/65342769/install-node-on-m1-mac)
