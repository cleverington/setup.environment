# PHP Linting

**Note:** This linting tooling requires `composer` already be installed and configured.

**Second Note:** This configuration allows for **both* *Drupal* AND *WordPress* linting, but sets a default to *Drupal*. See VS Code instructions for project-by-project overriding the Default linting standards.

**Advice:** Drupal and WordPress have *wildly* different linting standards, built on top of the basic phpcs standards. Don't try to use both at the same time, but it saves so many nightmares to have them both *installed* at the same time.

## Install Coder

Installing Coder _also_ installs `phpcs`, which requires both `php` and `composer` to be installed correctly.

1. First, install Coder globally, so it is available 'locally' to any project.

``` bash
composer global require drupal/coder
```

2. For the commands to be available globally, ensure they are in your `~/.bash_profile` and source the file, if necessary.

``` bash
export PATH="$PATH:$HOME/.composer/vendor/bin"
```

3. Tell `phpcs` where the Drupal and DrupalPractice standards are located and verify it worked.

``` bash
phpcs --config-set installed_paths ~/.composer/vendor/drupal/coder/coder_sniffer
```

*Note:* We will be overriding this in a moment, but it is good for testing.

``` bash
phpcs -i
```

Coder installation is successful if this is the output of `phpcs -i`:

``` bash
The installed coding standards are MySource, PEAR, PHPCS, PSR1, PSR2, Squiz, Zend, Drupal, and DrupalPractice
```

## Install WordPress Coding Standards

1. Install WP Coding Standards via `composer`

``` bash
composer global require wp-coding-standards/wpcs:dev-master
```

2. Update the `installed_paths` used by `phpcs` to add the WP Standards

**Note:** See the alternative option below, which makes things **so** much smoother.

``` bash
phpcs --config-set installed_paths $HOME/.composer/vendor/drupal/coder/coder_sniffer,$HOME/.composer/vendor/wp-coding-standards/wpcs
```

3. Verify both Drupal **and** WordPress Standards are usable

Run `phpcs -i` again and you should see:

``` bash
The installed coding standards are MySource, PEAR, PHPCS, PSR1, PSR2, Squiz, Zend, Drupal, DrupalPractice, WordPress, WordPress-Core, WordPress-Docs, WordPress-Extra and WordPress-VIP
```

### It Breaks, So Fix it

Whenever you update XCode (if on OSX), you will always be tossing the dice on whether `phpcs` is useless the next time you login.

To quick-fix it, just add this alias to your `~/.bash_profile` and execute the command.

``` bash
alias fixphpcs="phpcs --config-set installed_paths $HOME/.composer/vendor/drupal/coder/coder_sniffer,$HOME/.composer/vendor/wp-coding-standards/wpcs"
```

### Alternative Configuration

Instead of having to redo the `phpcs --config-set` command over and over again, there's a great little `composer` package that takes care of it for you.

`composer require --dev dealerdirect/phpcodesniffer-composer-installer` will auto-complete the configuration, which means `composer update` will fix it if XCode / OSX / etc. updates break it.
## Using The Linter

There are two methods for calling on `phpcs`.

### Use the Command Line

1. Drupal Standards can be checked via `phpcs --standard=Drupal file.name`
2. WordPress Standards can be checked via `phpcs --standard=Wordpress file.name`

### Use Your Editor, With Extensions

See `/instructions/editors/vscode.md` to configure auto-linting of projects.

## Resources

- Drupal.org - Installing Coding Sniffer: https://www.drupal.org/node/1419988
- WordPress Coding Standards for the Drupal Developer: https://www.xenomedia.com/blog/wordpress-coding-standards-drupal-developer

## Acknowledgements

The footwork was actually done by user ['Jim' at xenomedia.com back in July 2017](https://www.xenomedia.com/blog/wordpress-coding-standards-drupal-developer). I'm just keeping it here to a) not have to keep googling it and b) not worry about loosing it should the post become unavailable.
