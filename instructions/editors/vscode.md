# Visual Studio Code

- Fast
- Good for code linting
- Git integrations

## VS Code Packages

Bring up the Extensions view by clicking on the Extensions icon in the Activity Bar on the side of VS Code or the View: Extensions command (⇧⌘X).

First enabled terminal `code` command by opening the Command Palette (⇧⌘P) and typing 'shell command'. Click on `Shell Command: Install 'code' in path` command.

Then, for any package, you can type `code --install-extension {package_name}`

| Package                             | Package Title                            | Description                                                                                                                                                |
|-------------------------------------|------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------|
| formulahendry.auto-rename-tag       | Auto Rename Tag                          | Automatically rename paired HTML/XML tag as you type out changes                                                                                           |
| mgmcdermott.vscode-language-babel   | Babel JavaScript                         | Adds JavaScript highliting for ES201X, React JX, FLow, and GraphQL.                                                                                        |
| bungcip.better-toml                 | Better TOML                              | Adds `.toml` syntax highlighting. Also gives some additional `.md` syntax highlighting.                                                                    |
| coenraads.bracket-pair-colorizer-2  | Bracket Pair Colorizer 2                 | Colorizes matching brackets. A complete requirement for dyslexic developers!                                                                               |
| ikappas.composer                    | Composer                                 | Schema validation for `composer.json` files **AND** adds Composer commands to the `F1` Command Pallet.                                                     |
| tsega.drupal-8-javascript-snippets  | Drupal 8 JavaScript Snippets             | Adds auto-completion snippets to your `.js` files for usage with Drupal 8 themes.                                                                          |
| dssiqueira.drupal-8-snippets        | Drupal 8 Snippets                        | PHP Snippets for Drupal 8 (Can generate prepped code snippets beautifully.)                                                                                |
| tsega.drupal-8-twig-snippets        | Drupal 8 TWIG Snippets                   | Generates Drupal 8 snippets within TWIG files (Careful, sometimes messes when working on WordPress projects).                                              |
| pauloamgomes.drupal7-hooks-snippets | Drupal-7-Hooks-Snippets                  | Same as `Drupal 8 Snippets`, but for Drupal 7. A must have for D7 work. Core, Views, and CTools snippets.                                                  |
| juniormucciolo.drupal-7-snippets    | Drupal-y-Snippets                        | Same as the previous, but does more than just Core, Views, and CTools snippets.                                                                            |
| dmitrydorofeev.empty-indent         | empty-indent                             | A must have for every VS Code user. Removes random extra spaces on save.                                                                                   |
| dbaeumer.vscode-eslint              | ESLint                                   | Must Have. No explanation needed. Requires an existing `.eslintrc` file in your parent repository and ESLint to either be installed or installed globally. |
| eamodio.gitlens                     | GitLens - Git Supercharged               | Must Have. Adds Git tooling to the max.                                                                                                                    |
| xabikos.javascriptsnippets          | JavaScript (ES6) code snippets           | Code snippets for JavaScript in ES6 syntax.                                                                                                                                                                                                                                                                           |
| sburg.vscode-javascript-booster     | JavaScript Booster                       | Helps offer JavaScript rewriting to your by-habit older written `.js` code.                                                                                |
| sissel.shopify-liquid               | Liquid                                   | `.liquid` syntax highlighting and formatting.                                                                                                              |
| davidanson.vscode-markdownlint      | markdownlint                             | It judges you for writing bad `.md` files.                                                                                                                 |
| ronnidc.nunjucks                    | Nunjucks                                 | `.njk` syntax highlighting and formatting.                                                                                                                 |
| christian-kohler.path-intellisense  | Path Intellisense                        | Tries to provide autocompletion for file paths, when available.                                                                                            |
| felixfbecker.php-debug              | PHP Debug                                | Xdebug adapter. Requires Xdebug to be installed **and** for PHP to be configured to use Xdebug.                                                            |
| neilbrayfield.php-docblocker        | PHP DocBlocker                           | Helps auto-generate DocBlocks, so your code isn't terrible.                                                                                                |
| felixfbecker.php-intellisense       | PHP IntelliSense                         | Adds massive autocompletion to PHP coding. Makes your code not terrible.                                                                                   |
| hvyindustries.crane                 | PHP Intellisense - Crane                 | Enhances the previous plugin just a bit. (Includes lots of PHP 7.x goodness.)                                                                              |
| ikappas.phpcs                       | phpcs                                    | Completely integrates `phpcs` into your VS Code environment. So completely awesome.                                                                        |
| numso.prettier-standard-vscode      | Prettier-Standard - JavaScript Formatter | Helps you format your JavaScript using Standard and Prettier.                                                                                              |
| mechatroner.rainbow-csv             | Rainbow CSV                              | Makes working with `.csv` files actually **doable**.                                                                                                       |
| syler.sass-indented                 | Sass                                     | Indented Sass syntax highlighting, autocomplete & formatter for `.sass` and `.scss` files.                                                                 |
| glen-84.sass-lint                   | Sass Lint                                | Integrates `sass-lint` directly into VS Code.                                                                                                              |
| stylelint.vscode-stylelint          | stylelint                                | Integrates `stylelint` directly into VS Code.                                                                                                              |
| gruntfuggly.todo-tree               | Todo Tree                                | Makes finding your `// TODO:` content instantaneous.                                                                                                       |
| mblode.twig-language-2              | Twig Language 2                          | Adds better theming to `.twig` files.                                                                                                                      |
| PeterJausovec.vscode-docker         |                                          | Adds syntax highlighting to Dockerfile and docker-compose files.                                                                                           |

### Some other options

- dssiqueira.drupal-8-snippets (Drupal 8 Snippets)
- marcostazi.vs-code-drupal (Drupal 7/8 Syntax Highlighting)
- pauloamgomes.drupal7-hooks-snippets (Drupal 7 Hook Snippets)
- juniormucciolo.drupal-7-snippets (More Drupla 7 Hook Snippets)
- flowtype.flow-for-vscode (Flow Language Support)
- Orta.vscode-jest (Facebook's JEST Snippets. JavaScript Testing)
- donjayamanne.python (Bunch of Python Goodies)
- timothymclane.react-redux-es6-snippets (React / Redux ES6 Snippets)
- eg2.tslint (TypeScript Linting)
  - Will need to install tslint to use ( 'npm install -g tslint' )
- igorming.useful-react-snippets (Useful React Snippets)

### Drupal Specific Configurations

See https://www.drupal.org/docs/develop/development-tools/configuring-visual-studio-code for Community recommended setup and configuration tools.

## VS Code Settings

The settings are configured via 'Settings' and are maintained via JSON.
To override, just click on the pencil icon next to the code-to-be-overwritten and select 'Replace in settings'. This adds a line to the custom settings JSON on the right.

### Example

``` json
{
    "workbench.colorTheme": "Solarized Dark",
    "workbench.startupEditor": "newUntitledFile",
    "editor.fontFamily": "Menlo, Monaco, 'Courier New', monospace",
    "editor.wordWrap": "on",
    "html.format.wrapLineLength": 80,
    "editor.tabSize": 2
}
```

### Auto-Linting WordPress and Drupal

To enable auto-linting of WordPress/Drupal, you'll need to create a `.vscode/` directory at the root of the related projects, with a `settings.json` file in it.

#### WordPress

``` json
{
  "phpcs.standard": "WordPress-Extra"
}
```

#### Drupal

``` json
{
    "phpcs.standard": "Drupal"
}
```
