# work_with_grace - scripts

## Scripts Description

### Tools

| tools | status | dependencies | description |
| ----- | :----: | :----------: | ----------- |
| [`find_all_folders.sh`](tools/find_all_folders.sh) | coming soon | -- | usage: get into git root path and use `./scripts/tools/find_all_folders.sh ${Given_Dir}` |
| [`find_git_repo.sh`](tools/find_git_repo.sh)  | coming soon |  -- | usage: get into git root path and use `./scripts/tools/find_git_repo.sh ${Given_Dir}` |
| [`export_git_repo_dir.sh`](tools/export_git_repo_dir.sh) | coming soon | find_git_repo.sh | usage: get into git root path and use `./scripts/tools/find_git_repo.sh ${Given_Dir}` |
| [`git_update_batch.sh`](tools/git_update_batch.sh) | coming soon | find_git_repo.sh | usage: get into git root path and use `./scripts/tools/find_git_repo.sh ${Given_Dir} ${mode}` |

> note: 
>
> 1. if you don't input ${Given_Dir}, then it will start from `~` i.e. `/home/user_name`.
>
> 2. ${mode} now support: status, push, pull, fetch and remote.

