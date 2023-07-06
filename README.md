# Install steps

1. Create folder $HOME/dotfiles
2. Git ignore dotfiles
`echo "dotfiles" >> .gitignore`
4. Add the following to .bashrc and source it 
`alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'`
5. Clone
`git clone --bare git@github.com:stephencross/dotfiles.git $HOME/dotfiles`
6. Get files
config checkout
7. Add custom bash. Add .bashrc-sac in your .bachrc
source /full/path/.bashrc-sac
