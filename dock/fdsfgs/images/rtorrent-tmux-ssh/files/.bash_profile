# Automatically reattach the rtorrent session or create a new one only if STDIN is a terminal (we are using interactive mode)
if [ -t 0 ] && [ -z "$TMUX" ]; then
  tmux -L rt attach -t rt
fi
