function is_repo
  git status >/dev/null ^&1
end
function fish_prompt
  set last_status $status
  test $SSH_TTY
  and printf (set_color red)$USER(set_color brwhite)'@'(set_color yellow)(prompt_hostname)' '

  is_repo
  and printf (set_color reset)
  test $USER = 'root'
  and printf (set_color red)"#"


  # Main
  echo -n (set_color cyan)(prompt_pwd)(set_color red)' >'(set_color yellow)'>'(set_color green)'> '
end
