## Git Hidden Folder
The hidden folder ends in `.git` for example `project.git`. This mean that the project is an git repo.

Initialize an empty Git repository to a new project
* First, create a new folder
* Lasty, initalize the new repo

```
mkdri new-projects
cd new-projects
git init
touch readme.md
code readme.md
git status
git add readme.md
# Makes changes to readme.md
git commit -m "add readme.md file"
```

## Cloning
There are other ways to clone
* HTTPS
* SSH
* GitHub CLI

### HTTPS
```sh
git clone https://github.com/amprod2000/GitHub-Cert-Learning.git
cd GitHub-Cert-Learning
```

Generate a Personal Access Token (PAT)
https://github.com/settings/personal-access-tokens

Use the PAT as the password when you login
- Give access to contents for Commits

### SSH
Create the SSH Keys IF they do not exist, type enter three times.
```
cd ~/.ssh
ssh-keygen -b 4096 -t rsa
```

Save the public key to GitHub, login into GitHub and go to <b>settings</b> and open the tab <b>SSH and GFG Keys</b>. Paste the public key and give it a good name then click <b>New SSH Key</b>.
```
cat ~/.ssh/id_rsa.pub
```
Try this command now!!!
```ssh
git clone git@github.com:amprod2000/GitHub-Cert-Learning.git
cd GitHub-Cert-Learning
```

### GitHub CLI
Login
```
gh auth login
```

Clone
```
gh repo clone amprod2000/GitHub-Cert-Learning
```
## Commits
To commit 
```sh
git commit
```
Set the global editor
```
git config --global core.editor EDITOR_NAME
```
To commit with messahe and without opening an editor
```sh
git commit -m "MESSAGE HERE ABOUT NEW CHANGE"
```
## Branches
List branches
```
git branch
```

To create a new branch
```
git branch NAME
```

Checkout the branch
```
git checkout dev
```

To switch to different branches use ```switch``` or ```checkout```.
```
git checkout BRANCH_NAME
git switch BRANCH_NAME
```

## Remotes

## Stashing

```
git stash list
git stash
git stash save STASH_NAME
git stash apply
git stach pop
```

## Merging
If you want to merge the <b>dev branch</b> to the <b>main branch</b>, you need to be in dev first for example, ...
```
git switch/checkout dev
git merge main
```

## Add
To stage changes that will be included in the commit, the ```.``` adds all possible files.
```
git add readme.md
git add .
```

## Git Reset
Reset moves files from stage to unstage, preventing from files being commited.

```
git add .
git reset
```

## Status
Shows files that will not will not be commited
```
git status
```

## Gitconfig File
What stores the global configurtion for git.
```
git config --list --show-origin
```

Set 
```sh
git config --global user.name "First Last"
git config --global user.email email@example.com
```

## Log
Shows recent git commits to the tree
```
git log
```

## Push
To push a repo to our remote origin
```
git push
```