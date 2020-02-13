function git_sync_with_remote_head
  git show-branch | grep '*' | grep -v (git rev-parse --abbrev-ref HEAD) | head -1 | awk -F'[]~^[]' '{print $2}'
end
