# When the current working directory changes, run a method that checks for a .env file, then sources it. Happy days.

autoload -U add-zsh-hook
load-local-conf() {
     # check file exists, is regular file and is readable:
     if [[ -f .aws_profile && -r .aws_profile ]]; then
       source .aws_profile
     fi
}

load-local-conf
add-zsh-hook chpwd load-local-conf
