#!/usr/bin/env bash

make_git_config () {
cat > ~/.gitconfig << EOF
[user]
	email = $USER_EMAIL
	name = $USER_NAME
EOF
}

make_git_config
