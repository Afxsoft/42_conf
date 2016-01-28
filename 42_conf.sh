#! /bin/bash

# Color setting
C_WHITE="\033[33;0m";
C_BLACK="\033[33;30m";
C_BLUE="\033[33;34m";
C_YELLOW="\033[33;33m";
C_GREEN="\033[33;32m";
C_RED="\033[33;91m";
C_PURPLE="\033[33;35m";

# Template setting
C_TMP=${C_BLUE};
C_DRAW=1

# Script Template
T_TITLE="42 mac conf by Afxsoft"

function	echox()
{
	line="----------"

	while test $# -gt 0
	do
		line+=" $1 "
		shift
	done
	echo ${line} ${C_TMP};
}

echo ${C_TMP}
echo "          ******************************        "
echo "               42 mac conf by Afxsoft           "
echo "          ******************************        "

echo ""
curl -L http://install.ohmyz.sh &> /dev/null
if [ $? == 0 ]; then
		curl -L http://install.ohmyz.sh &> /dev/null | sh &> /dev/null &&
		echox ${C_WHITE} "- Oh my Zsh" ${C_GREEN} "OK [✓] "
	else
		echox ${C_WHITE} "- Oh my Zsh" ${C_RED} "FAIL [X]"
fi
echo ""
sed -i.bu 's/ZSH_THEME="robbyrussell"/ZSH_THEME="af-magic"/' ~/.zshrc &&
echox ${C_WHITE} "- Theme af-magic"    ${C_GREEN} "OK [✓]"
echo ""
curl -L https://raw.githubusercontent.com/reversTeam/Sublivim/master/installer.sh &> /dev/null | sh &> /dev/null &&
echox ${C_WHITE} "- Sublivim" ${C_GREEN} "OK [✓]"
echo ""
rm -rf /tmp/vim_theme/ &&
git clone https://github.com/chriskempson/vim-tomorrow-theme.git /tmp/vim_theme &> /dev/null &&
cp /tmp/vim_theme/colors/Tomorrow-Night.vim ~/.vim/colors/. &&
sed -i.bu 's/colorscheme molokai/colorscheme Tomorrow-Night/' ~/.vimrc &&
echox ${C_WHITE} "- Theme Tomorrow-Night" ${C_GREEN} "OK [✓]"
echo ""
defaults write -g com.apple.mouse.scaling 3 &> /dev/null &&
echox ${C_WHITE} "- Max speed mouse" ${C_GREEN} "OK [✓]"
echo ""
defaults write com.apple.mouse enableSecondaryClick 1 &> /dev/null &&
echox ${C_WHITE} "- On secondary click" ${C_GREEN} "OK [✓]"
echo ""
defaults -currentHost write com.apple.screensaver askForPassword -int 1  &> /dev/null &&
echox ${C_WHITE} "- Passeword require" ${C_GREEN} " OK [✓]"
echo ""
echox ${C_WHITE} " TODO" ${C_GREEN} "OK [✓]"
echo ""
echo "            =======  COMPLETED 😎  =====         "
echo "             https://github.com/Afxsoft"
echo "            ***************************         "
echo ${C_WHITE}
read -p " Do you want to reboot Iterm2 (y/n)?" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	open -n /Applications/iTerm\ 2.app && exit
fi
