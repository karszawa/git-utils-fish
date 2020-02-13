function git_get_parent_branch
  git show-branch | grep '*' | grep -v (git rev-parse --abbrev-ref HEAD) | head -1 | awk -F'[]~^[]' '{print $2}'
end
