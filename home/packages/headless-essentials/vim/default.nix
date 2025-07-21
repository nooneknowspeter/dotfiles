{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    # vim
  ];

  programs.vim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [
      auto-pairs
      base16-vim
      vim-surround
      vim-tmux-navigator
      vim-visual-multi
      vim-wayland-clipboard
    ];
    settings = {
      ignorecase = true;
    };
    extraConfig = ''
      " leader
      let mapleader = " "

      " enabled mouse in normal and visual mode
      set mouse=nv

      " set relativenumber and number
      set number relativenumber

      " syntax highlighting
      syntax on

      " security
      set modelines=0

      " show file stats
      set ruler

      " encoding
      set encoding=utf-8

      " whitespace
      set wrap
      set textwidth=79
      set formatoptions=tcqrn1
      set tabstop=4
      set shiftwidth=4
      set softtabstop=4
      set expandtab
      set noshiftround

      " clipboard
      set clipboard=unnamedplus

      " better escape
      imap jk <Esc>
      imap jj <Esc>

      " wrap lines
      set wrap

      " stats
      set ruler

      " status bar
      set laststatus=2

      " last line
      set showmode
      set showcmd

      " rendering
      set ttyfast 

      " formatting
      map <leader>q gqip

      " searching
      set hlsearch
      set incsearch
      set ignorecase
      set smartcase
      set showmatch
      noremap <Esc> :noh<CR>

      " access colors present in 256 colorspace
      let base16colorspace=256  

      " colorscheme
      color base16-black-metal-dark-funeral

      " transparent background
      hi Normal guibg=NONE ctermbg=NONE

      " blink cursor on error instead of beeping
      set visualbell

      " change cursor based on mode
      let &t_SI = "\e[6 q"
      let &t_EI = "\e[2 q"

      " multicursors
      let g:VM_maps = {}
      let g:VM_maps['Find Under'] = '<C-m>'
      let g:VM_maps['Find Subword Under'] = '<C-m>'
    '';
  };

}
