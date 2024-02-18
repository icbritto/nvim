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

You can download NodeJs directly from their website: [NodeJs | Downloads](https://nodejs.org/en/download)

- Once the installation is complete, run the following command (just to make sure everything is Ok):

```bash
# macOS or Linux
node -v

# Windows (powershell)
node -v
```

If it returns its version, that means NodeJs has been successfully installed.

## Ruby

You may already have Ruby installed on your computer. You can check inside a terminal emulator by typing:

```bash
ruby -v
```

### Windows

Go to ruby download page: [Ruby | Download](https://rubyinstaller.org/downloads/)

- Download Ruby installer
- Run the exe to download
- Add Ruby to your path env variable
- And check the installation with the commands bellow:

```bash
ruby -v
```

```bash
irb -v
```

```bash
gem -v
```

```bash
gem sources
```

Or you can also use the [Windows Package Manager CLI](https://github.com/microsoft/winget-cli) to install Ruby:

```bash
winget install RubyInstallerTeam.Ruby.{MAJOR}.{MINOR}

# Example

winget install RubyInstallerTeam.Ruby.3.2

# To see all versions avaliable

winget search RubyInstallerTeam.Ruby

# Note: if you are installing ruby for projects, you may want to install RubyWithDevKit

winget install RubyInstallerTeam.RubyWithDevKit.3.2
```

Also on Windows, you can use the [Chocolatey Package Manager](https://chocolatey.org/install) to install Ruby:

```bash
choco install ruby
```

It will reuse existing `msys2`, or install own for complete Ruby development environment.

### Linux/macOS

Go to ruby download page: [Ruby | Download](https://www.ruby-lang.org/en/documentation/installation/)

Then choose the way you prefer to install it.

## Python3

You may already have Python installed on your computer. You can check inside a terminal emulator by typing:

```bash
python --version
```

You can find everything you want in this website: [Real Python](https://realpython.com/installing-python/#how-to-install-python-on-windows)

But I will live some command lines you can run to install it, anyway.

### Windows

You can use `winget` to install it

```bash
winget install -e --id Python.Python.3.9
```

### macOS

You can use Homebrew to download and install Python:

```bash
curl https: // bootstrap.pypa.io /get- pip.py - o get- pip.py sudo brew install python3
```

### Linux

If you are using Ubuntu 16.10 or newer, then you can easily install Python 3.6 with the following commands:

```bash
$ sudo apt-get update
$ sudo apt-get install python3.6
```

If you’re using another version of Ubuntu (e.g. the latest LTS release) or you want to use a more current Python, we recommend using the [deadsnakes PPA](https://launchpad.net/~deadsnakes/+archive/ubuntu/ppa) to install Python 3.8:

```bash
$ sudo apt-get install software-properties-common
$ sudo add-apt-repository ppa:deadsnakes/ppa
$ sudo apt-get update
$ sudo apt-get install python3.8
```

If you are using other Linux distribution, chances are you already have Python 3 pre-installed as well. If not, use your distribution’s package manager. For example on Fedora, you would use dnf:

```bash
$ sudo dnf install python3
```

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

- Set the global prefix to the CI user:

```bash
npm config set prefix <C:\Users\USER\AppData\Roaming\npm>
```

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
