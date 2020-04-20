# get current branch in git repo
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		echo "[${BRANCH}]"
	else
		echo ""
	fi
}

export PS1="\[\033[01;32m\]\u@\h\[\e[m\]:\[\e[36m\]\`parse_git_branch\`\[\e[m\]\\[\033[01;34m\]\w\[\e[m\]\\$ "