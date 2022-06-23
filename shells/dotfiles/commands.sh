pdserver() {
    podman system service --time=0 unix:///tmp/podman.sock
}

function cdd() {
  cd "$(ls -d -- */ | fzf)" || echo "Invalid directory"
}
