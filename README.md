Setup environment
=================

Introduction
------------
Environment setup is something that if you don't do right the first time around
it will come back to haunt you because you will spend a lot of time fighting
with your tools instead of your tools helping you.  Also, installing tools with
`sudo` can result in you having to use that tool with `sudo` for every command.
When downloading things like node modules off the internet this could be a very
bad idea.  So don't use `sudo` unless it is specifically listed used below.

User setup
----------
- Create a new user named `developer` as an administrator, when install is
complete you can optionally remove administrator access
- Do any icloud, email, calendar, or contacts setup as necessary

OS Setup
--------
- Check for system updates Apple Icon > Software Update

System Preferences (El Capitan)
-------------------------------
- Sharing > Computer Name > Type your desired name
- Trackpad > Point and Click > Tap to click
- Trackpad > Point and Click > Silent clicking > On
- Keyboard > Key Repeat > Fast
- Keyboard > Delay Until Repeat > Short
- Keyboard > Modifier Keys ... > Caps Lock Key > No action (used as hyperkey)
- Accessibility > Mouse and Trackpad > Trackpad Options ... > Enable Dragging >
three finger drag
- Mouse > Tracking speed > Fast
- Mouse > Scrolling speed > Moderate
- Energy Saver > Power Adapter > Turn off display after 1 hour
- Energy Saver > Power Adapter > Prevent computer from sleeping automatically
- Mission Control > Mission Control > Second Drop Down > Middle Mouse Button
- Mission Control > Group Windows By Application > On

Turn on FileVault
--------------------
- Open system preferences
- Go to security
- Go to FileVault
- Turn it on
- Enable boot login accounts
- Restart your computer
- Continue the install process while this runs in the background

Xcode
-----
- You have two options for installing xcode.  The full package or just the
command line tools but at a minimum the command line tools are required.
- Install just the xcode command line tools with:
- `xcode-select --install` -or-
- Go to the app store and download the full package.  The full package is
great for if you do any sort of mobile development.

Manual Download Applications
----------------------------
- Google Chrome (https://www.google.com/intl/en/chrome/browser/)
- Firefox (https://www.mozilla.org/en-US/firefox/new/)
- Color picker (App store) - The free one
- Slack (App store)
- Atom (https://atom.io/)
- Sublime (@todo)
- Install SourceTree (https://www.sourcetreeapp.com/download/) - Register a new
account.  It's free.

Pre Install Configuration
-------------------------
- Setup SSH Key
- Setup SSH Key on GitHub
- Setup SSH Key on Pantheon
- Setup SSH Key on Acquia

Setup Time Machine
------------------
- If you have an external drive, network drive, or Apple server hosting time
machine.  Go ahead and set this up now.
- Optionally, if you wait for FileVault and Time Machine to complete you will
have a fresh install available at this point to restore to if needed.

Carbon Copy Clone
-----------------
- Optionally, setup a carbon copy clone at this point so you will have a fresh
install to restore to.

Install Tools
=============

Setup homebrew
--------------
Installation.md: [https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Installation.md](https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Installation.md)

### Install homebrew:
- `sudo chown -R $(whoami):admin /usr/local`
- `cd /usr/local`
- `mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew`
- `export PATH=$PATH:/usr/local/homebrew/bin`

### Install php:
- `brew tap homebrew/dupes`
- `brew tap homebrew/versions`
- `brew tap homebrew/php`
- `brew install PHP56 --with-pear`
- `brew install php56-gmp`
- `brew install php56-mcrypt`

### Edit php.ini:
- If necessary edit your /usr/local/etc/php/5.6/php.ini file for the date.timezone

### Install composer:
- Project: https://github.com/composer/composer
- Docs: https://getcomposer.org/doc/
- Download:
- `php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"`
- `php -r "if (hash_file('SHA384', 'composer-setup.php') === '55d6ead61b29c7bdee5cccfb50076874187bd9f21f65d8991d46ec5cc90518f447387fb9f76ebae1fbbacf329e583e30') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"`
- `php composer-setup.php`
- `php -r "unlink('composer-setup.php');"`

### Install hub:
- Project: https://github.com/github/hub
- Docs: https://hub.github.com/hub.1.html
- `brew install hub`

### Install gpg (code signing):
- Docs: https://help.github.com/articles/generating-a-new-gpg-key/#generating-a-gpg-key
- Exception to above docs was to use homebrew for gpg install.
- `brew install gpg`

### Install yarn:
- Project: https://github.com/yarnpkg/yarn/
- Docs: https://yarnpkg.com/en/docs/cli/
- `brew install yarn`

### Optional - Install zsh:
- Base zsh package:
- `brew install zsh zsh-completions` (this should be last to prevent weird errors)
- Oh My Zsh:
- `curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh`
- Optional (Change default shell to zsh):
- `chsh -s /usr/local/bin/zsh`
- To use zsh if it isn't your default shell type:
- `zsh`

### Optional - Install bash-completions:
- Install package:
- `brew install bash-completion`
- Add to sourced_files:
- `[ -f /usr/local/homebrew/etc/bash_completion ] && . /usr/local/homebrew/etc/bash_completion`

### Install DrupalVM related tools:
- `brew cask install virtualbox`
- `brew cask install vagrant`
- `brew install ansible`

### Optional - Consolas font:
- `brew install cabextract`
- `cd ~/Downloads`
- `mkdir consolas`
- `cd consolas`
- `curl -O http://download.microsoft.com/download/f/5/a/f5a3df76-d856-4a61-a6bd-722f52a5be26/PowerPointViewer.exe`
- `cabextract PowerPointViewer.exe`
- `cabextract ppviewer.cab`
- `open CONSOLA*.TTF`

iTerm2
------
- Download iTerm2 (https://iterm2.com/downloads/stable/iTerm2-2_1_4.zip)
- Move the unarchived app to your Applications/Utilities directory
- Open the app
- Open preferences
- Uncheck confirm "closing multiple sessions"
- Uncheck confirm "Quit iTerm2 (Cmd+Q)"
- Change fonts to Consolas 14pt font

Nano
----
- Take 5 minutes to learn the nano text editor and save yourself the hassle of
learning vim

VIM
---
- Learn how to get out of vim use the following:
- `:q`

Solarized Color Scheme
----------------------
- Download the theme: http://ethanschoonover.com/solarized/files/solarized.zip
- In iTerm2 Preferences, under Profiles and Colors, go to Load Presets... >
Import..., find and open the two .itermcolors files we downloaded.
- Go back to Load Presets... and select Solarized Dark to activate it.
- Additional info here: http://ethanschoonover.com/solarized

Setting up this repository
--------------------------
- `mkdir ~/repos`
- `cd ~/repos`
- `git clone git@github.com:ccjjmartin/setup.environment.git`
- NOTE: If you see "Permission Denied (publickey)" this means that you need to
setup your publickey on GitHub or use the https version of the url.
- `mkdir ~/repos/setup.environment/SAVE_ME_DONT_DELETE/`
- `touch ~/repos/setup.environment/SAVE_ME_DONT_DELETE/.gitconfig`
- `git config --global core.editor "nano"`
- `git config --global user.name "John Doe"`
- `git config --global user.email johndoe@email.com`
- Run scripts/setup-symlinks.sh to setup home_directory files

Installing drush
----------------
[http://docs.drush.org/en/master/install/](http://docs.drush.org/en/master/install/)
[https://github.com/drush-ops/drush](https://github.com/drush-ops/drush)
[https://www.lullabot.com/articles/switching-drush-versions](https://www.lullabot.com/articles/switching-drush-versions)

### Install drush 9.x:
> **NOTE** - As of Drupal 8.4 `drush` only functions as a dependancy module within individual Drupal projects. Similarly, `drush/drush:8.*` only has limited functionality and support. 
- Install [Drush Launcher](https://github.com/drush-ops/drush-launcher)
  - This ensures the `drush` command is available globally, not just within individual Drupal docroots.
  - The Drush Launcher uses the `drush` command, by default, globally.
- `cd ~/some-drupal-docroot`
- `composer require "drush/drush:9.*"`

### Install drush 8.x:
- `mkdir ~/drush8`
- `cd ~/drush8`
- `composer require "drush/drush:8.*"`

### Install drush 7.x:
- `mkdir ~/drush7`
- `cd ~/drush7`
- `composer require "drush/drush:7.*"`

### Create aliases:
- `alias drush7='~/drush7/vendor/bin/drush'`
- `alias drush8='~/drush8/vendor/bin/drush'`

### Test:
- `drush7 --version`
- `drush8 --version`

Setup Git
---------
This is how your commits will be stored.
- `git config --global user.email "name@example.com"`
- `git config --global user.name "Firstname Lastname"`

File Structure
--------------
- `mkdir ~/repos` (git clone here)
- `mkdir ~/vms` (Vagrantfile here)
- `mkdir ~/patches` (contrib patches here)
- `mkdir ~/sql` (.sql files here - exclude from backups)
- `mkdir ~/VirtualBox\ VMs` (Virtual Machines Here - exclude from backups)

Virtual Machines
================

DrupalVM
--------
- `cd ~/vms/`
- `git clone git@github.com:geerlingguy/drupal-vm.git`
- For existing machines get the exiting config.yml and drop it into the new
directory.
- For new machines copy the example.config.yml to config.yml and configure.

Code Linting
============

Setup phpcs
-----------
- `pear install PHP_CodeSniffer` (it might be possible this isn't needed)
- `composer global require drupal/coder`
- `phpcs --config-set installed_paths ~/.composer/vendor/drupal/coder/coder_sniffer`

JS linting with eslint
----------------------
- `npm install -g eslint eslint-plugin-import eslint-config-airbnb-base`

SASS Linting
------------
- Globally:
- `npm install stylelint stylelint-config-standard -g`
- Or per project:
- `npm install stylelint-config-standard --save-dev`

Code Editing
============

Atom
----
- Good for reviewing file history with git-time-machine
- Good for GitHub.com markdown previewing
- Good for code linting

Atom Packages
-------------
- For any of the packages below you can type `apm install {package_name}`:
- autocomplete-php (add autocomplete php support)
- git-time-machine (History of a particular file)
- linter (a tool for code linting)
- linter-phpcs (a PHP language specific linter)
- linter-eslint (a JS language specific linter)
- linter-stylelint (a CSS language specific linter)
- minimap (preview of your file's entire source code)
- minimap-linter (a preview of code linting)
- term3 (command line shell within Atom)
- atom-beautify (automatically fix code mistakes for you)
- multi-wrap-guide (add multiple wrap guides at different column widths)
- react (JSX plugin)
- atom-phpunit (PHPUnit Testing)
- php-debug (XDebug)
- git-blame (Shows who made the last commit line by line in a file)
- goto-definition (Shows source code definition)
- teletype (Allows collaboration of writing code)

(If using React.js)
- js-hyperclick (lets you jump to where variables are defined)
- language-JSX (Adds syntax highlighting and snippets to JSX file in Atom)
- language-babel (Language grammar for all versions of JavaScript including ES2016 and ESNext, JSX syntax)
- language-graphql (Atom syntax highlighting for GraphQL, ported from language-babel.)
- react-snippets (An Atom snippet library for React)

Atom Settings
-------------
- To change the settings below open menu item Atom > Preferences > Packages
- mardown-preview > "Use GitHub.com style" > checked
- autocomplete-plus > Keymap For Confirming a Suggestion > "tab" only.
- bracket-matcher > autocomplete smart quotes > unchecked
- linter-phpcs > Code Standards or Config File > "Drupal"
- linter-stylelint > Uncheck "Disable when no config file is found"
- linter-stylelint > Check "Use standard"
- NOTE: The linter does not run on file open, start typing or save the file.
- atom-beautify > CoffeeScript > Indent Size > 2
- atom-beautify > PHP > Default Beautifier > "PHPCBF"
- atom-beautify > PHP > PHPCBF Standard > "Drupal"
- multi-wrap-guide > Vertical Guide Wrap Positions > "80, 92"
- multi-wrap-guide > Lock Guides > checked

Atom Command Line
-----------------
- On my install it looks like the atom command was possible out of the box
although it is possible that one of the packages above created the command:
- `atom`
- `atom .` will open the current directory in atom.
- You can check your `/usr/local/bin` directory for a symlink called atom
- If it isn't there run:
- `ln -s /Applications/Atom.app/Contents/Resources/app/atom.sh /usr/local/bin/atom`

Visual Studio Code
----
- Fast
- Good for code linting
- Git integrations

VS Code Packages
-------------

Bring up the Extensions view by clicking on the Extensions icon in the Activity Bar on the side of VS Code or the View: Extensions command (⇧⌘X).
 
First enabled terminal `code` command by opening the Command Palette (⇧⌘P) and typing 'shell command'. Click on `Shell Command: Install 'code' in path` command.
 
Then, for any package, you can type `code --install-extension {package_name}`

- dzannotti.vscode-babel-coloring (Adds JS Babel es6/es7 syntax coloring)
- PeterJausovec.vscode-docker (Adds syntax highlighting, etc. for Dockerfile and docker-compose files.)
- dssiqueira.drupal-8-snippets (Drupal 8 Snippets)
- marcostazi.vs-code-drupal (Drupal 7/8 Syntax Highlighting)
- pauloamgomes.drupal7-hooks-snippets (Drupal 7 Hook Snippets)
- juniormucciolo.drupal-7-snippets (More Drupla 7 Hook Snippets)
- dbaeumer.vscode-eslint (ESLint)
    - Will need to install eslint to use ( `npm install -g eslint` )
- flowtype.flow-for-vscode (Flow Language Support)
- Orta.vscode-jest (Facebook's JEST Snippets. JavaScript Testing)
- donjayamanne.python (Bunch of Python Goodies)
- timothymclane.react-redux-es6-snippets (React / Redux ES6 Snippets)
- eg2.tslint (TypeScript Linting)
    - Will need to install tslint to use ( 'npm install -g tslint' )
- igorming.useful-react-snippets (Useful React Snippets)


VS Code Settings
-------------
The settings are configured via 'Settings' and are maintained via JSON.
To override, just click on the pencil icon next to the code-to-be-overwritten and select 'Replace in settings'. This adds a line to the custom settings JSON on the right.

**Example**
```
{
    "workbench.colorTheme": "Solarized Dark",
    "workbench.startupEditor": "newUntitledFile",
    "editor.fontFamily": "Menlo, Monaco, 'Courier New', monospace",
    "editor.wordWrap": "on",
    "html.format.wrapLineLength": 80,
    "editor.tabSize": 2
}
```

RVM
====

Setup RVM
---------
- `curl -L https://get.rvm.io | bash -s stable --ruby`
- This will add the following line to your .profile file:
- `[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*`
- This is unnecessary if you are using the dotfiles included in this repository.

Setup bundler
-------------
- `gem install bundler`
- You should use bundler on your projects to manage gem dependencies like
compass.
- This simplifies your life to one line for ruby packages:
- `bundle install`

Node
====

NVM
----
- Go to this page for the latest install command:
https://github.com/creationix/nvm#install-script

SASS and LESS
=============
- SASS and LESS are intentionally left out here as they should be setup properly
within your projects and not installed globally.

CIRCLECI
========
- curl -o /usr/local/bin/circleci https://circle-downloads.s3.amazonaws.com/releases/build_agent_wrapper/circleci && chmod +x /usr/local/bin/circleci

SQL
====

Setup SequelPro
---------------
- Get your favorites from ~/Library/Application\ Support/SequelPro/Data/Favories.xml
- https://github.com/sequelpro/sequelpro/releases

Pantheon
========

Terminus
--------
 - Via  curl: `curl -O https://raw.githubusercontent.com/pantheon-systems/terminus-installer/master/builds/installer.phar && php installer.phar`
 - Via **Composer**: cd /install/location ; composer require pantheon-systems/terminus
 - Via **cgr**:
 ```bash
 $ composer global require consolidation/cgr
 $ cgr pantheon-systems/terminus
 $ echo 'export PATH=~/.composer/vendor/bin:$PATH' >> ~/.bashrc (or other shell resource file such as ~/.zshrc)
 $ source ~/.bashrc (or other shell resource file such as ~/.zshrc)
 ```

I recommend installing via Composer, as managing versions of Terminus is controlled via `composer update` instead of manually uninstalling and reinstalling.  You can also update via `cgr update` as well.

Pancakes
--------
- `composer create-project --stability=beta -d ~/.terminus/plugins/ terminus-plugin-project/terminus-pancakes-plugin:~1`
- Paired with SequelPro, Terminus Pancakes allows you to load your Pantheon database near-instantly *from* Pantheon via simple CLI commands such as `terminus site:pancakes`


Post Install Process
====================

Security
--------
- Optionally, remove administrator access (this is for people very concerned
about security)

Carbon Copy Clone
-----------------
- Optionally, run carbon copy clone at this point so you will have a fresh
install to restore to.


Author's Picks
==============

Hyperkey
--------
- http://brettterpstra.com/2013/01/26/a-guided-tour-of-my-hyper-key-shortcuts/

Slate window manager
--------------------
- https://github.com/jigish/slate
- NOTE: This project is no longer maintained.  As such I am looking for a
suitable replacement that offers this much flexibility.

Install Menu Meters
-------------------
- http://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/

SMC Fan Control
---------------
- You only have to have one mac melt on you before you install this on every
computer.
- http://www.macupdate.com/app/mac/23049/smcfancontrol/download

Postman
-------
- Download for mac version

Other
----------------------------
- Drag your /Applications/Utilities folder to the dock (on the side near the
trash)

Thanks to ...
=============

All Contributors
----------------
- Chris Martin (https://github.com/ccjjmartin)
- Charles Leverington (https://github.com/cleverington)
- Irma Martin (https://github.com/irmamartin)

My Family
---------
- Fred Martin (My Father - https://github.com/frmartin)
- Irma Martin (My Mother - https://github.com/irmamartin)

My Mentors
----------
- Brandon Williams (https://github.com/rocketeerbkw)
- Rob Ristroph (https://www.drupal.org/u/rgristroph)

Four Kitchens
-------------
- Mike Minecki (https://github.com/mminecki)
- David Diers (https://github.com/thebruce)
- Dustin Younse (https://github.com/milsyobtaf)
- Jon Peck (https://github.com/fluxsauce)
- Patrick Coffey (https://github.com/patrickocoffeyo)
- Matt Grill (https://github.com/mattgrill)
- Taylor Smith (https://github.com/tsmith512)

The Internet
------------
- Nicolas Hery (https://github.com/nicolashery/mac-dev-setup)
- (http://sourabhbajaj.com/mac-setup/index.html)
