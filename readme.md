## Git Hidden Folder
The hidden folder ends in `.git` for example `project.git`. This mean that the project is an git repo.

Initialize an empty Git repository to a new project
* First, create a new folder
* Lasty, initalize the new repo

```sh
# Create a folder
mkdri new-projects

# Go into the folder
cd new-projects

# Initialize an empty Git repository to a new project
git init

# Create readme.md MarkDown file
touch readme.md

# Open file in Visal Code
code readme.md

# Checks if there are mofified or new files
git status

# Add File to staged
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
The common strategy for authenticathing to perform git operations on your remote GitHub repo is using SSH keys.

SSH uses a public and private key to authorize remote access to servers. ssh-keygen in a well known command to generate a public and private key.
#### To create the SSH Keys IF they do not exist, type enter three times.
```sh
# Switch Directory, To Store Them In A Different Directory.
cd ~/.ssh

# To Generate an RSA Key
ssh-keygen -b 4096 -t rsa

# To Generate an ED25519
ssh-keygen -t ed25519
```

A copy of the public and private key reside on the local computer and a copy of the that public key is stored on GitHub. 
* To save the public key to GitHub, login into GitHub and go to <b>settings</b> and open the tab <b>SSH and GFG Keys</b>. Paste the public key and give it a good name and then click <b>New SSH Key</b>.
* You can also add keys to a repo as well, <b><u>pick any repo</u></b>, click <b>settings</b>, one the left side of the screen, under <b><u>security</u></b> click <b>Deploy keys</b>, on the right side of the screen click <b>Add deploy key</b>. Paste the public key and give it a good <b>title</b> and then click <b>Add Key</b>.

```sh
# To Get The RSA Public Key
cat ~/.ssh/id_rsa.pub

# To Get The ED25519 Public Key
cat ~/.ssh/id_ed25519.pub
```

#### The process of authenticating and authorizing
* The server check if you have the same public key
* If you do, a challenge message is sent. It's an encrypted message with your public key.
* Only a private key on the local computer will decrypt the message
* Once decrypted the client signs the message also using the private key, it sends back a signature.
* GitHub/server gets the signature, using the public key will verify the signature
* A connection is established!!!

It allows the user to use the SSH keys to get gone or to push.

Then you can clone your repo using the <b>ssh style address</b>
```ssh
git clone git@github.com:amprod2000/GitHub-Cert-Learning.git
cd GitHub-Cert-Learning
```

### Deploy Keys
Deploy keys allows you to attach public keys directly to a Git Repo

You can use keys to, ...
* <b>Build server or CI/CD third-party</b> services that need to clone the repo so they perform a build or a deploy.
* <b>Single Repo Access</b> so insted of using a shared key pair for multiple repos you have a single key pair for a single Git Repo.
* Avoid using <b>Personal Account Access Tokens</b>

### Personal Account Tokens (PAT)
Are an alternative to using passwords for authentication to GitHub when using the GitHub API or the command line. 
* Personal Access Tokens is found under <b>Developer Settings</b>.
* When you clone a git repo using HTTPS you would use your personal access token to authorize the clone for example, `git clone https://github.com/amprod2000/GitHub-Cert-Learning.git`.
* Insted of using gh login you could set the GH_TOKEN
  * Check if `GH_TOKEN` is set, `env | grep --color GH_`
  * Create an <b>Fine-grained Personal Access Token</b>, located in the Developer Settings under the <u><b>user settings</b></u>.
  * Copy and past, where is says <b>MY_PERSONAL_ACCESS_TOKEN</b>, `export GH_TOKEN="MY_PERSONAL_ACCESS_TOKEN"`
  * Check again of the `GH_TOKEN` is set `env | grep --color GH_`, if so. YAY!
* When using GitHub SDKs you need to pass your PAT to authorize API calls, <div style="color:#990000; background:#D9D9D9; padding-left:5px; border:1px; border-radius: 5px; font-size: 15px; font-family: 'Noto Sans'"> require 'octokit' <br> octokit = Octokit::Client.new(access_token: 'YOUR-TOKEN') </div>

GitHub has two types of PATS
* <b>Classic tokens</b>
  * They are no longer recommended for use.
  * Customer's with legacy systems may be still using clasic token
* <b>Fined-grained personal access tokens</b>
  * Granted specific permissions
  * Must have an expiry date
  * Can only access specific repositories
  * Can only access resources owned by a single use or organization

### GitHub APIs
GitHub has two APIs <b>REST API</b> and <b>GraphQL API</b>
* To use the GraphQL API tool go to `https://docs.github.com/en/graphql/overview/explorer`

#### REST API endpoints for issues
List issues assigned to the authenticated user
```
curl -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer <YOUR-TOKEN>" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/issues
```

### GitHub SDKs
* Octokit are the offical SDKs to programmatically interact with the Git REST API
* GitHub official maintains SDKs languages
  * JavaScript / TypeScript
  * C# / .NET
  * Ruby
  * Terraform provider, good for <b>repos</b> but not <b>issues</b>

#### Terraform
Makes sure you are inside the terraform folder and then you can initialize Terraform<br>
`terraform init`

`terraform plan`

`terraform apply --auto-approve`

`terraform destroy --auto-approve`

#### Ruby
Generate the Gemfile file<br>
`bundle init`

Install a package<br>
`bundle install`

Install the Octokit package<br>
`gem install octokit`

#### Javascript
Install Octokit<br>
`npm i octokit`

#### Fix Errors
If you see this error message, make sure you have GH_TOKEN set it not generate it!!!
```sh
Planning failed. Terraform encountered an error while generating this plan.

╷
│ Error: Error
│ 
│   with provider["registry.terraform.io/integrations/github"],
│   on main.tf line 11, in provider "github":
│   11: provider "github" {}
│ 
│ GET https://api.github.com/user: 401 Bad credentials []
```

### GitHub CLI
The GitHub CLI is a command Line Interface to interact with your GitHub Account. You can quickly perform common GitHub actions without leaving your developer environment.

| Syntax | Description |
| ----------- | ----------- |
| `brew install gh` | The GitHub CLI can be installed on <b>Windows, Linux, and macOS</b>. |
| <div style="color:#990000; background:#D9D9D9; padding-left:5px; border:1px; border-radius: 5px; font-size: 15px; font-family: 'Noto Sans'"> "features": {<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"ghcr.io/devcontainers/features/github-cli:1": {}<br>} </div> | The GitHub CLI can be installed for GitHub Codespaces via Features. |
| `gh auth login` | Login |
| `gh repo clone amprod2000/GitHub-Cert-Learning` | Clone |
| `gh repo create github-examples --public` | Create a repo |
| `gh issue create --title "Issue title" --body "Issue body"` | Create an issue |
| `gh pr review --comment -b "Interesting"` | Reviewing a PR |

### GitHub Desktop
GitHub Desktop is an application to interact with GitHub repos without the browser or via code. Git & GitHub operations can be performed via the GUI for an easy-to-use experiance.

GitHub Desktop supports
* macOS
* Windows
* Linux

### GitHub Accounts
* Personal
* Organizational
* Enterprise

#### Personal
Individul accounts with a username and profile, they can own resources like repositories and projects, and actions taken are attributed to the personal account. They can be either GitHub Free or GitHub Pro

#### Organization
Shared accounts where people collaborate on projects, They can also own resources like repositories but are managed throught individual personal accounts. Organizations offer different roles with verying levels of access and come with security features.

#### Enterprise


### Core Commands
| Commands | Description |
| ----------- | ----------- |
| `gh auth` | ... |
| `gh browse` | ... |
| `gh codespace` | ... |
| `gh gist` | ... |
| `gh issue` | ... |
| `gh org` | ... |
| `gh pr` | ... |
| `gh project` | ... |
| `gh release` | ... |
| `gh repo` | ... |

### Core Commands | gh repo
| Commands | Description |
| ----------- | ----------- |
| `gh repo set-default` | Interactively select a default repository |
| `gh repo set-default owner/repo` | Set a repository |
| `git remote add newrepo https://github.com/owner/repo` | Show more repository options in the interactive picker |
| `gh repo create` | Create a repository interactively |
| `gh repo delete REPOSITORY_NAME` | Delete a GitHub repository. |

### Core Commands | gh auth
| Commands | Description |
| ----------- | ----------- |
| `gh auth token` | This command outputs the authentication token for an account on a given GitHub host. |

### Core Commands | gh issue
| Commands | Description |
| ----------- | ----------- |
| `gh issue create --title "I found a bug" --body "Nothing works"` | Before you create issues, enable it. Go to the repo's <b>Settings</b>, on the right click <b>Features</b>, lastly click <b>Issues</b>. |
| `Paragraph` | ... |

### Additional Commands
| Commands | Description |
| ----------- | ----------- |
| `gh alias` | ... |
| `gh api` | ... |
| `gh completion` | ... |
| `gh config` | ... |
| `gh extension` | ... |
| `gh gpg-key` | ... |
| `gh label` | ... |
| `gh ruleset` | ... |
| `gh search` | ... |
| `gh secret` | ... |
| `gh ssh-key` | ... |
| `gh status` | ... |
| `gh variable` | ... |

### Additional Commands | gh label
| Commands | Description |
| ----------- | ----------- |
| `gh label list` | Display labels in a GitHub repository |
| `gh label create` | Create a new label on GitHub, or update an existing one with `--force`. |
Create new danger label
```sh
gh label create danger --description "Something really not right" --color E99695
```

### GitHub Actions Commands
| Commands | Description |
| ----------- | ----------- |
| `gh cache` | ... |
| `gh run` | ... |
| `gh workflow` | ... |

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
| Syntax | Description |
| ----------- | ----------- |
| `git add FILE_NAME` | Files to be staged |
| `git add .` | Adds all files from current directory & subdirectory. |
| `git rm FILE_NAME` | Remove a specific file |
| `git commit` | To commit changes and opens the default editor to add a message. |
| `git commit -m "WRITE A GOOD COMMIT MESSAGE!!!"` | To commits staged changes with a message without opening an editor |
| `git commit -a -m "WRITE A GOOD COMMIT MESSAGE!!!"` | Automatically stages all tracked, modified files before the commit |
| `git commit --amend` | Modifies the most recent commit |
| `git commit -m "Initial commit" --allow-empty` | Creates an empty commit, useful as a placeholder |
| `git commit -m "WRITE A GOOD COMMIT MESSAGE!!!" --author="Author Name <email@example.com>"` | Commits with a specified author |
| `git checkout/switch 2840504c6e5315a2209797c55f6f042f5434d87f` | Checkout to a specific commit based on SHA hash |
| `git config --global core.editor EDITOR_NAME` | Set the global editor |

## Branches
Branches are copies of a point in time that have been modified to be different.

All repositories start with the <b>main branch</b>.

Create branches for
* <b>Specific environments</b>: Staging, Development, Production
* <b>Specific to developers</b>: andrew, bayko, cindy
* <b>Per feature</b>: payment-gateway-feature
* <b>Per bug</b>: hotfix-blank-homepage

| Syntax | Description |
| ----------- | ----------- |
| `git branch` | List all local branches |
| `git branch NAME` | Creates a new branch |
| `git checkout/switch BRANCH_NAME` | Checkout (Switch to) a branch |
| `git checkout/switch -b BRANCH_NAME` | Creates and checkout (Switch to ) a branch |
| `git branch -d BRANCH_NAME` | Delete a branch |
| `git branch -m OLD_BRANCH_NAME NEW_BRANCH_NAME` | Rename a branch |
| `git branch -a` | Lists both remote and local branches |

A <b>common workflow</b> for developers is to create a branch or a feature, and they need to push their branch upstream to the remote name origin.
```sh
# Creates and checkout (Switch to ) a branch.
git checkout -b BRANCH_NAME

# Developer makes changes to files.

# Adds all files from current directory & subdirectory.
git add .

# To commits staged changes with a message without opening an editor.
git commit -m "WRITE A GOOD COMMIT MESSAGE!!!"

# ...
git push -u origin BRANCH_NAME
```

## Remotes
* A git <b>remote</b> represents the reference to remote location where a copy of the repository is hosted.
* You can have multiple remote entries for your git repo.
* The most common is called `origin` as a remote name, it indicates the central or golden repo everyone is working from and represents the source of truth.

### The remote entries are stored in `.git/config`
```sh
[core] repositoryformatversion = 0
        filemode = true
        bare = false
        logallrefupdates = true
[remote "origin"]
        url = git@github.com:amprod2000/GitHub-Cert-Learning.git
        fetch = +refs/heads/*:refs/remotes/origin/*
[branch "main"]
        remote = origin
        merge = refs/heads/main
        vscode-merge-base = origin/main
[remote "upstream"]
        url = git@github.com:CODE33301/GitHub-Cert-Learning.git
        fetch = +refs/heads/*:refs/remotes/upstream/*
        gh-resolved = base
[branch "dev"]
        vscode-merge-base = origin/main
        remote = origin
        merge = refs/heads/dev
```

### Common Git Remote Commands you should know!
| Syntax | Description |
| ----------- | ----------- |
| `git remote -v` | Lists all remote repositories along with their URLs. |
| `git remote add NAME URL` | ... |
| `git remote remove NAME` | ... |
| `git remote rename OLD_NAME NEW_NAME` | ... |
| `git push REMOTE_NAME BRANCH_NAME` | Pushes a branch and it's commits to the specific remote |
| `git pull REMOTE_NAME BRANCH_NAME` | Pulls updates from a remote branch |
| `git fetch REMOTE_NAME` | Fetch updates without pulling |

### Upstream & Downstream
| Key Term | Description |
| ----------- | ----------- |
| Downstream | A repository that pulls or clones from another repository. <b>Pull</b>ing is downstream |
| Upstream | The repository to which we push changes. <b>Push</b> is upstream. |

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

## Flow
Github Flow is a <b>light-weight workflow</b> for multiple developers working on a single repository.
* <b>Create a branch</b>: for each new task or feature. create a new branch off the main branch.
* <b>Add Commits</b>: Make changes and commit them to your branch.
* <b>Open a Pull Request</b>: Start a discussion about your commits, reviewing code in the pull request.
* <b>Discuss and Review</b>: Share your pull request with teammates for feedback.
* <b>Deploy</b>: Test your changes in a production environment.
* <b>Merge</b>: Once your changes are verified, merge them into the main branch.