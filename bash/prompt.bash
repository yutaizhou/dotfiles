# Inspired by Mathias Bynen's dotfile repo 
# Shell prompt based on the Solarized Dark theme.
# Screenshot: http://i.imgur.com/EkEtphC.png
# Heavily inspired by @necolas’s prompt: https://github.com/necolas/dotfiles
# iTerm → Profiles → Text → use 13pt Monaco with 1.1 vertical spacing.

if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
	export TERM='gnome-256color';
elif infocmp xterm-256color >/dev/null 2>&1; then
	export TERM='xterm-256color';
fi;

# git info in CLI
prompt_git() {
	local s='';
	local branchName='';

	# Check if the current directory is in a Git repository.
	git rev-parse --is-inside-work-tree &>/dev/null || return;

	# Check for what branch we’re on.
	# Get the short symbolic ref. If HEAD isn’t a symbolic ref, get a
	# tracking remote branch or tag. Otherwise, get the
	# short SHA for the latest commit, or give up.
	branchName="$(git symbolic-ref --quiet --short HEAD 2> /dev/null || \
		git describe --all --exact-match HEAD 2> /dev/null || \
		git rev-parse --short HEAD 2> /dev/null || \
		echo '(unknown)')";

	# Early exit for Chromium & Blink repo, as the dirty check takes too long.
	# Thanks, @paulirish!
	# https://github.com/paulirish/dotfiles/blob/dd33151f/.bash_prompt#L110-L123
	repoUrl="$(git config --get remote.origin.url)";
	if grep -q 'chromium/src.git' <<< "${repoUrl}"; then
		s+='*';
	else
		# Check for uncommitted changes in the index.
		if ! $(git diff --quiet --ignore-submodules --cached); then
			s+='+';
		fi;
		# Check for unstaged changes.
		if ! $(git diff-files --quiet --ignore-submodules --); then
			s+='!';
		fi;
		# Check for untracked files.
		if [ -n "$(git ls-files --others --exclude-standard)" ]; then
			s+='?';
		fi;
		# Check for stashed files.
		if $(git rev-parse --verify refs/stash &>/dev/null); then
			s+='$';
		fi;
	fi;

	[ -n "${s}" ] && s=" [${s}]";

	echo -e "${1}${branchName}${2}${s}";
}

# may need to create a general env checker in the future, not just for conda
check_conda_env ()
{
    if [ ! -z "$CONDA_DEFAULT_ENV" ]; then
        printf -- "%s" "(`basename $CONDA_DEFAULT_ENV`)"
    else
        printf -- "%s" ""
    fi
}

# colors :)
esc="\e"
bold='';
reset="[0m";
black="[30;1m";
blue="[38;5;32m";
cyan="[96;1m";
green="[32;1m";
purple="[35;1m";
red="[31;1m";
white="[37;1m";
yellow="[33;1m";


# Set the terminal title and prompt.
PS1="\[\033]0;\W\007\]"; # working directory base name
PS1+="\n"; # newline
PS1+="\[${esc}${yellow}\]\u"; # username
PS1+="\[${esc}${white}\] at ";
PS1+="\[${esc}${green}\]\h"; # host
PS1+="\[${esc}${white}\] in ";
PS1+="\[${esc}${blue}\]\w"; # working directory full path
PS1+="\$(prompt_git \"\[${esc}${white}\] on \[${esc}${purple}\]\" \"\[${esc}${red}\]\")"; # Git repository details
PS1+="\[${esc}${reset}\]\n";
PS1+="\[${esc}${white}\]$(check_conda_env)\$ \[${esc}${reset}\]"; # `$` (and reset color)
export PS1;

PS2="\[${esc}${yellow}\]→ \[${esc}${reset}\]";
export PS2;