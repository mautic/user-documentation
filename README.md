[![Documentation Status][RTD badge URL]][RTD URL] [![All Contributors](https://img.shields.io/github/all-contributors/mautic/user-documentation?color=ee8449&style=flat-square)](#contributors)

# Mautic user documentation

This repository contains the end-user documentation for Mautic on the [Read the Docs platform][ReadTheDocs]. When merging a PR, changes display immediately at https://docs.mautic.org/.

If you're looking for the current end-user documentation, please go to https://docs.mautic.org/.

## Making a PR

To make a small change to the base language files for the documentation, use the 'edit file' button on the documentation and commit your changes. This creates a new Pull Request.

To make more complex changes, follow the steps below:

1. Use 'Codespaces' under the Code menu to run the docs in the browser. Alternatively follow below to work locally. 
2. You need to install a code editor. We recommend [Visual Studio Code](https://code.visualstudio.com) as it automatically installs all the extensions you need.
3. Install [GitHub CLI](https://cli.github.com/) which simplifies Git commands.
4. Create a working folder on your local computer.
5. Open a terminal and navigate to that folder using the command `cd <path/to/folder>`.
6. Fork the `mautic/user-documentation` repository on GitHub by clicking on the fork button at the top right.
7. Once forked, if you know your way around Git and you are writing documentation for something which is specific to the latest version of Mautic, you should branch from the current default branch.  

If you are writing documentation for a feature which is coming in a future release - for example 7.0 - then branch off the relevant branch for that release, which should generally speaking match the branch used in the main `mautic/mautic` repository - for example `7.x`.
8. Type `gh repo clone [your-forked-repo-name]/user-documentation` to clone your forked repository to your local computer.
9. Open the folder `user-documentation` created in your filesystem.
10. At the bottom left of your screen, the default branch is showing as your active branch. Click this, and a box appears at the top of the page allowing you to 'create a new branch'. Type a name which relates to the work you plan to do.
11. Make your desired changes by editing the files, which you can locate on the left pane.
12. Use the Source Control icon on the menu on the left to view changed files. Click the plus icon next to them to 'stage' them for committing. This lets you save and describe changes in chunks, making it easier to reverse specific changes in the future.
13. Commit all your changes, then click the 'Publish Branch' button. This action might prompt you to create a fork of the repository if not done earlier.
14. Under the Source Control icon, navigate to the 'Branches' section. Find your branch, hover over the 'Create pull request' icon, and click it.
15. This action directs you to the GitHub web interface where you can add an appropriate title and description for your proposed changes.
16. If reviewers request changes, switch back to the branch - as explained in step 10. Implement the necessary changes and follow steps 11-14 again. After updating be sure to commit and push your changes, then notify the reviewer to review the updated content.

## Build documentation locally

- [RST Syntax Cheatsheet][RST Cheatsheet]
- [Sphinx Demo][Sphinx Demo]
- [Sphinx Syntax][Sphinx Template]

The following provides instructions for how to build docs locally for visualization without pushing to the remote.

1. Install Python 3 for your OS if not already installed
2. Install Sphinx `pip install sphinx`
3. Install sphinx-rtd-theme `pip install sphinx-rtd-theme`
4. Install MyST Parser `pip install myst_parser`
5. CD into the docs directory `cd [path to this repo]/docs`
6. Run `make html`
7. This generates HTML in `docs/build/html`. Setup a web server with the web root as `docs/build/html` or open `docs/build/html/index.html` in a browser.
 
### Vale
Before pushing, run Vale and address suggestions and errors as applicable.
1. Install [`vale`][Vale] 
2. `vale .`

### PhpStorm/PyCharm File Watcher
You can automatically build changes to `RST` files using a file watcher. 
1. Go to Preferences -> Tools -> File Watchers -> + button -> custom
2. Configure the watcher as presented in the screenshot

<img width="753" alt="Screen Shot 2021-10-06 at 15 52 06" src="https://user-images.githubusercontent.com/63312/136281761-204861f9-340a-4e3e-8ce5-e0584236303c.png">


[ReadTheDocs]: <https://readthedocs.org>
[End user docs]: <https://github.com/mautic/mautic-documentation>
[RTD badge URL]: <https://readthedocs.org/projects/mautic-documentation/badge/?version=latest>
[RTD URL]: <https://mautic-documentation.readthedocs.io/en/latest/?badge=latest>
[RST Cheatsheet]: <https://github.com/ralsina/rst-cheatsheet/blob/master/rst-cheatsheet.rst>
[Sphinx Template]: <https://github.com/readthedocs/sphinx_rtd_theme/tree/master/docs/demo>
[Sphinx Demo]: <https://sphinx-rtd-theme.readthedocs.io/en/stable/demo/structure.html>
[Vale]: <https://vale.sh/docs/vale-cli/installation/>
## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tbody>
    <tr>
      <td align="center" valign="top" width="14.28%"><a href="http://overall.cloud"><img src="https://avatars.githubusercontent.com/u/98914036?v=4?s=100" width="100px;" alt="Gustavo Kennedy Renkel"/><br /><sub><b>Gustavo Kennedy Renkel</b></sub></a><br /><a href="#translation-gustavokennedy" title="Translation">🌍</a></td>
      <td align="center" valign="top" width="14.28%"><a href="http://www.youradman.com"><img src="https://avatars.githubusercontent.com/u/8171816?v=4?s=100" width="100px;" alt="Roman"/><br /><sub><b>Roman</b></sub></a><br /><a href="#translation-zaharovrd" title="Translation">🌍</a></td>
      <td align="center" valign="top" width="14.28%"><a href="http://adevo.pl"><img src="https://avatars.githubusercontent.com/u/39382654?v=4?s=100" width="100px;" alt="Tomasz Kowalczyk"/><br /><sub><b>Tomasz Kowalczyk</b></sub></a><br /><a href="https://github.com/mautic/user-documentation/commits?author=tomekkowalczyk" title="Documentation">📖</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/kukis2107"><img src="https://avatars.githubusercontent.com/u/60287846?v=4?s=100" width="100px;" alt="kukis2107"/><br /><sub><b>kukis2107</b></sub></a><br /><a href="#translation-kukis2107" title="Translation">🌍</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/putzwasser"><img src="https://avatars.githubusercontent.com/u/26040044?v=4?s=100" width="100px;" alt="putzwasser"/><br /><sub><b>putzwasser</b></sub></a><br /><a href="https://github.com/mautic/user-documentation/pulls?q=is%3Apr+reviewed-by%3Aputzwasser" title="Reviewed Pull Requests">👀</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/Moongazer"><img src="https://avatars.githubusercontent.com/u/1685510?v=4?s=100" width="100px;" alt="Moongazer"/><br /><sub><b>Moongazer</b></sub></a><br /><a href="https://github.com/mautic/user-documentation/commits?author=Moongazer" title="Documentation">📖</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/patrykgruszka"><img src="https://avatars.githubusercontent.com/u/8580942?v=4?s=100" width="100px;" alt="Patryk Gruszka"/><br /><sub><b>Patryk Gruszka</b></sub></a><br /><a href="https://github.com/mautic/user-documentation/commits?author=patrykgruszka" title="Documentation">📖</a></td>
    </tr>
    <tr>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/Amiyah14"><img src="https://avatars.githubusercontent.com/u/45315891?v=4?s=100" width="100px;" alt="Emily"/><br /><sub><b>Emily</b></sub></a><br /><a href="https://github.com/mautic/user-documentation/commits?author=Amiyah14" title="Documentation">📖</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/J-Wick4"><img src="https://avatars.githubusercontent.com/u/1954540?v=4?s=100" width="100px;" alt="John Wick"/><br /><sub><b>John Wick</b></sub></a><br /><a href="https://github.com/mautic/user-documentation/issues?q=author%3AJ-Wick4" title="Bug reports">🐛</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/jagtapreshma"><img src="https://avatars.githubusercontent.com/u/81143250?v=4?s=100" width="100px;" alt="jagtapreshma"/><br /><sub><b>jagtapreshma</b></sub></a><br /><a href="https://github.com/mautic/user-documentation/commits?author=jagtapreshma" title="Documentation">📖</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/markusVJH"><img src="https://avatars.githubusercontent.com/u/121946942?v=4?s=100" width="100px;" alt="Markus Heinilä"/><br /><sub><b>Markus Heinilä</b></sub></a><br /><a href="https://github.com/mautic/user-documentation/commits?author=markusVJH" title="Documentation">📖</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://eglise.catholique.fr"><img src="https://avatars.githubusercontent.com/u/2785980?v=4?s=100" width="100px;" alt="CPweb"/><br /><sub><b>CPweb</b></sub></a><br /><a href="https://github.com/mautic/user-documentation/pulls?q=is%3Apr+reviewed-by%3Auadf" title="Reviewed Pull Requests">👀</a></td>
      <td align="center" valign="top" width="14.28%"><a href="http://renatoheeb.com"><img src="https://avatars.githubusercontent.com/u/1469531?v=4?s=100" width="100px;" alt="Renato Heeb"/><br /><sub><b>Renato Heeb</b></sub></a><br /><a href="https://github.com/mautic/user-documentation/commits?author=heebinho" title="Documentation">📖</a></td>
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!
