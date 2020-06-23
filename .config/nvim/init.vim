source $HOME/.config/nvim/configs/plugin_list.vim
source $HOME/.config/nvim/configs/standard_general.vim
source $HOME/.config/nvim/configs/plugin_configs.vim

if exists('g:started_by_firenvim')
    set laststatus=0
    colo onedark
else
    set laststatus=2
endif
