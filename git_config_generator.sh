#!/usr/bin/env bash

make_git_config_file () {
    echo "User full name:"
    read GIT_USER_NAME

    echo "User e-mail:"
    read GIT_USER_EMAIL

    cat > ~/.gitconfig << EOF
[user]
	email = $GIT_USER_EMAIL
	name = $GIT_USER_NAME
EOF
    unset GIT_USER_NAME
    unset GIT_USER_EMAIL
}

make_git_config_file
