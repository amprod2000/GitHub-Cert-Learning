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
A Git commit represent incremental changes to a codebase represented with a git tree (graph) at a specific time.

A git commit contains
* Additions, <b>modifications</b>, and deletions of files.
* Additions and deletions of file contents.
* <b>Hash</b>: A unique SHA-1 hash identifier for each commit that acts as an ID, for example ```2840504c6e5315a2209797c55f6f042f5434d87f```.
* <b>Auther information</b>: The name and email of the person who made the commit.
* <b>Message</b>: A Description of what changes the commit contains. <b>Write good commit messages!</b>
* <b>Timestamp</b>: The date and time when the commit was made.
* <b>Parent Commit Hash(es)</b>: 
* <b>Snapshot of Content</b>: A snapshot of the project at the time of the commit not the files, but reference to them.

<div style="color:#000000; background:#FFD1B3; padding-left:5px; border:1px; border-style: solid; border-color: #FF6600; border-radius: 5px;">
Git does not store the whole files in each commit but stores the state of changes. This reduces the file size. To the developer the files will appear in full.
</div><br>

### Common Git Commands you should know!
Files to be staged
```sh
git add FILE_NAME
```

Adds all files from current directory & subdirectory.
```sh
git add .
```

Remove a specific file
```sh
git rm FILE_NAME
```

To commit changes and opens the default editor to add a message.
```sh
git commit
```

To commits staged changes with a message without opening an editor
```sh
git commit -m "WRITE A GOOD COMMIT MESSAGE!!!"
```

Automatically stages all tracked, modified files before the commit
```sh
git commit -a -m "WRITE A GOOD COMMIT MESSAGE!!!"
```

Modifies the most recent commit
```sh
git commit --amend
```

Creates an empty commit, useful as a placeholder
```sh
git commit -m "Initial commit" --allow-empty
```

Commits with a specified author
```sh
git commit -m "WRITE A GOOD COMMIT MESSAGE!!!" --author="Author Name <email@example.com>"
```

Checkout to a specific commit based on SHA hash
```sh
git checkout/switch 2840504c6e5315a2209797c55f6f042f5434d87f
```

Set the global editor
```sh
git config --global core.editor EDITOR_NAME
```

## Branches
Branches are copies of a point in time that have been modified to be different.

All repositories start with the <b>main branch</b>.

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