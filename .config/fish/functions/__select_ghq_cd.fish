function __select_ghq_cd
  ghq list -p | fzy | read -l repo
  if test -n "$repo"
    cd $repo
  end
  commandline -f repaint
end
