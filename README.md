# Neovim Config
#### This is my personalized configuration for neovim.

## Summary
- `lazy.nvim` is used as the plugin manager.
- The `lua` folder contains the code needed to configure and load the plugins on neovim.
  - Older versions of my `lua` folders will be labelled with a `v` to indicate version, e.g. `lua-v1`.
- `.tmux.config` file should be copied to the path `~/.tmux.config` on mac

## Organization
- `init.lua`: script to initialize `lazy.nvim` and loads the required folders in `lua` folder.
- The `lua` folder will contain two folders, `config` and `plugins`.
  - `config`: contains the `lazy.nvim` setup and vim-related configurations such as options and keymaps
  - `plugins`: contains the setup for each plugin

## How to add a plugin
1. Navigate to `config/plugins.lua` and add the plugin's repository name.
1. Then, navigate to `plugins` folder and create a new lua file, e.g. `telescope.lua` for the plugin `telescope`
1. Add the relevant setup scripts and configurations for the plugin.
  - In the future, customization of the plugin configuration can be done in this file. For details on how to do this, you can refer to the plugin's github documentation.
1. Open `plugins/init.lua` and add in the following line (change the name of the file according to the one you have just added in the previous step):
```
    require("plugins.telescope")
```
