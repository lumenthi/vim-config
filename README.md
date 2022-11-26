# Automated vim configuration
Deploy my vim configuration anywhere with a single script
## Usage
- Clone the repo `git clone https://github.com/lumenthi/vim-config && cd vim-config`
- Launch the install script `./install`
- Vim is _ready_ ! To revert changes and restore vim, run the uninstall script `./uninstall`

## Configuration
### .vimrc
- Edit the `config` then re-run the install script `./install` if more custom shortcuts are needed
### 42 Header
- Configuration if you need to use the 42 header plugin (F2 by default): 
  - Configure the 42 user by changing value at [this](https://github.com/lumenthi/vim-config/blob/master/plugins/stdheader.vim#L82) line before running the `./install` script
  - The email can also be changed by change value at [this](https://github.com/lumenthi/vim-config/blob/master/plugins/stdheader.vim#L87) line before running the `./install` script
  - Header's keybind can be changed [here](https://github.com/lumenthi/vim-config/blob/master/plugins/stdheader.vim#L136)
### Sublivim
- For more information about shortcuts and features available, be sure to check the [Sublivim](https://github.com/reversTeam/Sublivim) repo !

## Themes
**1000+** themes are available with this script
- To change the default theme, edit the following line of the `config` file then re-run the install script `./install`
```
autocmd VimEnter * colorscheme <name_of_your_theme>
```
- Here are the commands to switch between themes:
  - `F3` previous theme
  - `F4` next theme
  - `F5` random theme
- Use the vim command `:colorscheme <name_of_your_theme>` to select a theme by its name
#### _Note that some themes might be bugged and you'll have to restart your vim if a problem occurs_
