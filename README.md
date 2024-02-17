# Requirements

## Neovim

If don't have neovim installed in your machine, check the [neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md) repository.

## NodeJs

- First lets make sure we have NodeJs installed running the following command:

```bash
# macOS or Linux
node -v

# Windows (powershell)
node -v
```

If it returns its version, that means you already have NodeJs installed. But if you see an error or the version didn't showed, you must install it.

You can download NodeJs directly from their website: [NodeJs|Downloads](https://nodejs.org/en/download)

- Once the installation is complete, run the following command (just to make sure everything is Ok):

```bash
# macOS or Linux
node -v

# Windows (powershell)
node -v
```

If it returns its version, that means NodeJs has been successfully installed.

# Installation

## Windows (powershell)

- Make a backup of your current Neovim files:

```bash
# required
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak  

# optional but recommended
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
```

- Clone the nvim config

```bash
git clone https://github.com/icbritto/nvim $env:LOCALAPPDATA\nvim
```

- Remove the `.git` folder, so you can add it to your own repo later
```bash
Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force
```

- Start Neovim
```bash
nvim
```
 
## Linux/macOS

- Make a backup of your current Neovim files:

```bash
# required
mv ~/.config/nvim{,.bak}  

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

- Clone the nvim config

```bash
git clone https://github.com/icbritto/nvim ~/.config/nvim
```

- Remove the `.git` folder, so you can add it to your own repo later
```bash
rm -rf ~/.config/nvim/.git
```

- Start Neovim
```bash
nvim
```

# Installation Issues

If you are having problems installing the lsp plugins first lets try running the following commands:

## Windows (powershell)

- First open an administrator level command prompt.

- Note the current global prefix:

```bash
npm prefix -g
```

- Set the global prefix to the CI user: npm config set prefix <C:\Users\USER\AppData\Roaming\npm>.

- Install the needed packages: 

```bash
npm i -g PKG
```

- Alternatively, you can install pnpm even if you don't have Node.js installed, using the following scripts3:

**On Windows Using PowerShell:**

```bash
iwr https://get.pnpm.io/install.ps1 -useb | iex
```

**On POSIX systems**

```bash
curl -fsSL https://get.pnpm.io/install.sh | sh -
```
