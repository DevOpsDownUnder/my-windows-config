# James Smith Profile Install

## Overview

This repo is designed to handle my basic windows setup. Install a couple of handy tools that I use most days and configure my posh/pwsh prompts.

## How to use

Firstly you'll need to install Git. You can do that on windows 10+ using Winget.

```bash
winget install Git.Git --exact --silent --accept-package-agreements --accept-source-agreements
```

Once you have installed Git, you'll need to clone this repo somewhere. for this example I'm going to use ```C:\Config```. I use [Git submodules](https://git-scm.com/docs/git-submodule) to pull in the [pwsh-menu](https://github.com/Sup3rlativ3/ps-menu) module so you'll need to ensure that you include that when you clone the repo.

```bash
git clone --recurse-submodule https://github.com/DevOpsDownUnder/my-windows-config.git C:\Config
```

Once you have the repo downloaded, you'll need to run the ```./Install-Profile.ps1``` script to kick things off.

```PowerShell
Set-Location C:\Config
. .\Install-Profile.ps1
```

Use the up and down arrows to move through the menu. Space bar will select/unselect an item and Enter will install the selected items.

![Menu overview](ReadMe_Images/Menu.png)

## Prompt

![Prompt overview](ReadMe_Images/Overview.png)

Here are some of the features in the prompt:

* Alert if you are in admin mode.
* Computer name.
* Current directory.
* Information about the current active Azure/AWS/GCP account.
* Git branch and commit information.
* Execution time for the previous command.
* Time the previous command finished.
* Backgrounds for posh/pwsh differation.
* Colours and icons for different items in  directory listings.
* Prompt colour themes.
* Quake mode enabled (Ctrl+Shift+D).

## Applications

* Windows Terminal.
* ShareX.
* VSCode.
* Github CLI.
* 7-Zip.
* Pwsh.
* Obsidian.

## Windows Terminal

Windows terminal was chosen as the terminal emulator for its features (Quake mode anybody?), ease of use, and customisability.

## ShareX

ShareX is easily the best screenshot tool for windows and it is super lightweight too.

## VSCode

Default editor with a million available plugins that will suit almost all coding work you will need to do. Some commong plugins are also installed for code.

* PowerShell.
* GitLens.
* Material Icon theme.
* One-Monokai theme.
* Github PR (Used for authentication).
* Markdown lint.
* Prettier.

## Github CLI

Mostly used for authentication to Github and swapping accounts easily in the cli.

## 7-Zip

The best archive tool for Windows.

## Pwsh

The current default version of Powershell. Not installed on all versions by default hence why it is here.

## Obsidian

This is my note taking application of choice. Everything is written in markdown and then I sync my knowledgebase repo with git for built-in versioning and history. Obsidian also has a log of plugins to make note taking much easier.

If you add your Obsidian vault/s to a git repo, make sure to add ```*workspace.json``` to your .gitignore file or you're going to have a bad time mmmkay?

## To-Do

* [ ] Adjust the install script to install the required modules for windows powershell (5).
* [x] ~~Add common extensions for VSCode.~~ COMPLETE
* [x] ~~Add common plugins for Obsidian.~~ NO CLI FOR OBSIDIAN

## PowerShell profiles Dirs

Code: C:\\users\\<username>\\PowerShell
Ps Core: C:\\Users\\<username>\\WindowsPowerShell
Win PS: C:\\Users\\<username>\\Documents\\WindowsPowerShell\\Microsoft.PowerShell_profile.ps1

## Windows Terminal Dir

C:\\users\\<username>\\appdata\\local\\packages\\Microsoft.WindowsTerminal_8wekyb3d8bbwe\\LocalState

Images go in C:\\users\\<username>\\appdata\\local\\packages\\Microsoft.WindowsTerminal_8wekyb3d8bbwe\\roamingState
