# run nowgitit with a commit message (in quotation marks!!) and it will add, commit, and push.
function nowgitit () {
  # ensure exactly one argument sent
  if [ "$#" -ne 1 ]; then
    echo '!NGI! Must supply a commit message. Usage: nowgitit "your commit message". Be sure to use quotes!'
    return
  fi
  pwd
  echo -n "!NGI! Add *, commit '" $1 "', & push origin/master? "
  read -p  "<y/n> " prompt
  if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
  then
    echo "!NGI! Adding:"
    git add -A
    echo "!NGI! Commiting: "
    git commit -m "$1"
    echo "!NGI! Pusing: "
    git push origin master
    echo "!NGI! nowgitit script complete"
    # This is a great idea
    # also it will only work on a mac I think
    say "done"
    return
  else
    echo "!NGI! nowgitit command aborted. No action taken."
    return
  fi
}

alias ngi="nowgitit"