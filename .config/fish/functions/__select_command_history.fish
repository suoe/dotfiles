function __select_command_history
  history | fzy | read -l prompt
  commandline $prompt
  commandline -f repaint
end
