#! /bin/bash

echo "\033[33;34m |*********************************************| \033[33;0m"
echo "\033[33;34m |*            42 mac conf by Afxsoft         *| \033[33;0m"
echo "\033[33;34m |*********************************************| \033[33;0m"
curl -L http://install.ohmyz.sh &> /dev/null | sh &> /dev/null
echo "\033[33;34m |*            - Oh my Zsh             OK [✓] *| \033[33;0m"
echo "\033[33;34m |*                                           *| \033[33;0m"
sed -i.bu 's/ZSH_THEME="robbyrussell"/ZSH_THEME="af-magic"/' ~/.zshrc
echo "\033[33;34m |*            - Theme af-magic        OK [✓] *| \033[33;0m"
echo "\033[33;34m |*                                           *| \033[33;0m"
curl https://raw.githubusercontent.com/reversTeam/Sublivim/master/installer.sh &> /dev/null | sh &> /dev/null
echo "\033[33;34m |*            - Sublivim              OK [✓] *| \033[33;0m"
echo "\033[33;34m |*                                           *| \033[33;0m"
rm -rf /tmp/vim_theme/
git clone https://github.com/chriskempson/vim-tomorrow-theme.git /tmp/vim_theme &> /dev/null
cp /tmp/vim_theme/colors/Tomorrow-Night.vim ~/.vim/colors/.
sed -i.bu 's/colorscheme molokai/colorscheme Tomorrow-Night/' ~/.vimrc
echo "\033[33;34m |*            - Theme Tomorrow-Night  OK [✓] *| \033[33;0m"
echo "\033[33;34m |*                                           *| \033[33;0m"
defaults write -g com.apple.mouse.scaling 3 &> /dev/null
echo "\033[33;34m |*            - Max speed mouse       OK [✓] *| \033[33;0m"
echo "\033[33;34m |*                                           *| \033[33;0m"
defaults write com.apple.mouse enableSecondaryClick 1 &> /dev/null
echo "\033[33;34m |*            - On secondary click    OK [✓] *| \033[33;0m"
echo "\033[33;34m |*                                           *| \033[33;0m"
echo "\033[33;34m |*       =======  COMPLETED 😎  =====         *| \033[33;0m"
echo "\033[33;34m |*                                           *| \033[33;0m"
echo "\033[33;34m |*********************************************| \033[33;0m \n"
