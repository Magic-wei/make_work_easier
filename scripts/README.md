# work_with_grace - scripts

## Scripts Description

### Tools

| tools | status | dependencies | description | usage |
| ----- | :----: | :----------: | ----------- | ----- |
| [`find_all_folders.sh`](tools/find_all_folders.sh) | coming soon | -- | find all folders in `${Given_Dir}` | run in terminal under the root directory of this git repository. `./scripts/tools/find_all_folders.sh ${Given_Dir}` |
| [`find_git_repo.sh`](tools/find_git_repo.sh)  | coming soon |  -- | find all git repositories in `${Given_Dir}` | run in terminal under the root directory of this git repository. `./scripts/tools/find_git_repo.sh ${Given_Dir}` |
| [`export_git_repo_dir.sh`](tools/export_git_repo_dir.sh) | coming soon | find_git_repo.sh | export the path of all git repositories in `${Given_Dir}` | run in terminal under the root directory of this git repository. `./scripts/tools/find_git_repo.sh ${Given_Dir}` |
| [`git_update_batch.sh`](tools/git_update_batch.sh) | coming soon | find_git_repo.sh | do git instructions ${mode} in all git repositories in `${Given_Dir}` | run in terminal under the root directory of this git repository. `./scripts/tools/find_git_repo.sh ${Given_Dir} ${mode}` |

> **note**: 
>
> 1. **You should run any scripts above under the root directory of this git repository.**
> 2. if you don't input `${Given_Dir}`, then it will start from `~` i.e. `/home/user_name`.
> 3. ${mode} now support: status, push, pull, fetch and remote.