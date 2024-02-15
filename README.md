# Install the nvim config with PowerShell

> #### Make a backup of your current Neovim files:
>
> ***# require*** 
>
> `Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak`
> 
> ***# optional but recommended***
>
> `Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak`
> 
> 
> #### Clone the starter
>
> `git clone https://github.com/LazyVim/starter $env:LOCALAPPDATA\nvim`
> 
> 
> #### Remove the `.git` folder, so you can add it ti your own repo later
>
> `Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force`
> 
> 
> #### Start Neovim!
>
> `nvim`
 
 
# Install the nvim config in Linux/MacOS

> #### Make a backup of your current Neovim files:
> 
> ***# require***
>
> `mv ~/.config/nvim{,.bak}`
>
> ***# optional but recommended***
>
> `mv ~/.local/share/nvim{,.bak}`  
> `mv ~/.local/state/nvim{,.bak}`  
> `mv ~/.cache/nvim{,.bak}`  
>
>
> #### Clone the starter
>
> `git clone https://github.com/LazyVim/starter ~/.config/nvim`
>
>
> #### Remove the `.git` folder, so you can add it ti your own repo later
>
> `rm -rf ~/.config/nvim/.git`
>
>
> #### Start Neovim!
>
> `nvim`
