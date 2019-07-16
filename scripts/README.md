# work_with_grace - scripts

## Scripts Description

### Tools

| tools | status | dependencies | description | usage |
| ----- | :----: | :----------: | ----------- | ----- |
| [`find_all_folders.sh`](tools/find_all_folders.sh) | coming soon | -- | find all folders in `${Given_Dir}` | run in terminal under the root directory of this git repository. `./scripts/tools/find_all_folders.sh ${Given_Dir}` |
| [`find_git_repo.sh`](tools/find_git_repo.sh)  | coming soon |  -- | find all git repositories in `${Given_Dir}` | run in terminal under the root directory of this git repository. `./scripts/tools/find_git_repo.sh ${Given_Dir}` |
| [`export_git_repo_dir.sh`](tools/export_git_repo_dir.sh) | coming soon | find_git_repo.sh | export the path of all git repositories in `${Given_Dir}` | run in terminal under the root directory of this git repository. `./scripts/tools/find_git_repo.sh ${Given_Dir}` |
| [`git_update_batch.sh`](tools/git_update_batch.sh) | coming soon | find_git_repo.sh | do git instructions ${mode} in all git repositories in `${Given_Dir}` | run in terminal under the root directory of this git repository. `./scripts/tools/find_git_repo.sh ${Given_Dir} ${mode}` |

> **Note**: 
>
> 1. if you don't input `${Given_Dir}`, then it will start from `~` i.e. `/home/user_name`.
> 2. ${mode} now support: status, push, pull, fetch and remote.
> 3. You can also run `./scripts/setup.sh` to setup alias and use `git_update_batch ${Given_Dir} ${mode}` and `find_git_repo ${Given_Dir}` in the terminal under arbitrary directory.



### Installers

| installers | status | dependencies | description | version |
| ---------- | :----: | :----------: | :---------- | :---: |
| [`install_keepassxc.sh`](installers/install_keepassxc.sh) | coming soon | -- | [KeePassXC](https://keepassxc.org/) can store your passwords safely and auto-type them into your everyday websites and applications. | latest |
| [`install_okular.sh`](installers/install_okular.sh) | coming soon | -- | [Okular](https://okular.kde.org/) is a universal document viewer developed by [KDE](https://www.kde.org/), which works on multiple platforms, including but not limited to Linux, Windows, macOS, *BSD, etc. | latest |
| [`install_sublime.sh`](installers/install_sublime.sh) | coming soon | -- | [Sublime Text](https://www.sublimetext.com/) is a text editor for code, markup and prose, and [Sublime Merge](https://www.sublimemerge.com/) helps you better work on Git version control. | latest |
| [`install_typora.sh`](installers/install_typora.sh) | coming soon | -- | [Typora](https://typora.io/) will give you a seamless experience as both a reader and a writer when using Markdown. | latest |

> **Note**:
> * Usage: run `./scripts/installers/<*>.sh` in terminal under the root directory of this git repository. 