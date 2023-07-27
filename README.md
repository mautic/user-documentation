[![Documentation Status][RTD badge URL]][RTD URL]
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-6-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/mautic/user-documentation)

# Mautic user documentation (new)

This repository hosts the new end-user documentation for Mautic on the [Read the Docs platform][ReadTheDocs]. Whenever a PR is merged, changes are deployed immediately to https://mautic-documentation.readthedocs.io/

If you're looking for our current end-user documentation, please go to https://docs.mautic.org/ or the [GitHub repository][End user docs].

## Migration of end-user docs to Read the Docs

We aim to move all aspects of the end-user documentation to Read the Docs.

For more background, our end goal, and to let us know if you want to help, please join the Education Team channel (#t-education) on Slack (get an invite at https://mautic.org/slack). Thanks in advance!

## Making a PR

To make a small change to the base language files for the documentation, use the 'edit file' button on the documentation and commit your changes. This creates a new Pull Request.

To make more complex changes you need to clone this repository and work on your local computer.

1. Install a code editor, [Visual Studio Code](https://code.visualstudio.com) is recommended as it automatically installs all the extensions you need.
2. Install [Github CLI](https://cli.github.com/) which makes it much easier to work with Git commands
3. Install the dependencies from the requirements.txt file in the root of the /docs folder using the command `pip3 install -r requirements.txt`
4. Create a working folder on your local computer
5. Open a terminal and navigate to that folder using the command `cd <path/to/folder>`
6. Type `gh repo clone mautic/user-documentation` - you may be prompted to authenticate with GitHub the first time you do this
7. Open the folder user-documentation that is created in your editor
8. At the bottom left of your screen you will see the default branch called 'main' is showing as your active branch. Click this, and at the top of the page will show a box where you can select 'create a new branch'. Type a name which relates to the work you plan to do. Once you do this, the bottom left will change from 'main' to the name of the branch you created. At any time you can click back into that, and change back to 'main'.
9. Now you are working on your own branch for this change, make the changes that you need to make by editing the files, which you should see on the left pane.
10. Use the Source Control icon on the menu on the left, to view the files you have changed. Click the plus icon next to them to 'stage' them for committing. This allows you to save files in chunks, explaining what you're doing with each chunk, rather than en-mass. It makes it easier to reverse small parts in the future.
11. If you're making any changes to text, remember to run the commands below to update the files for translations on Transifex and include those in your PR.
12. Once you've committed all your changes, click the Publish Branch button. This might prompt you to create a fork of the repository - that's fine.
13. Once you've published the branch, look for the Branches section in the accordion menu under the Source Control icon. Find your branch and hover over the icon which says 'Create pull request' and click it.
14. This will take you to the web interface of GitHub, where you can give an appropriate title and description for the changes you are proposing.
15. If you need to make changes in the future after review, switch back to this branch as mentioned in step 8. Make the changes, and then follow steps 9-12. Update the pull request when you have completed your changes and committed and pushed them, to ask the reviewer to re-review after the updates.

### Generating translations files

Currently, we manually create the translation files necessary for Transifex to inform translators that there are changes to the content.

To do this, run the following at the command line after following the steps below to build the documentation locally.

1. Run the command in the /docs folder `sphinx-build -b gettext . docs_translations`
2. Commit the files created with your pull request

## Build documentation locally

- [RST Syntax Cheatsheet][RST Cheatsheet]
- [Sphinx Demo][Sphinx Demo]
- [Sphinx Syntax][Sphinx Template]

The following provides instructions for how to build docs locally for visualization without pushing to the remote:

1. Install Python 3 for your OS if not already installed
2. Install Sphinx `pip install sphinx`
3. Install sphinx-rtd-theme `pip install sphinx-rtd-theme`
4. CD into the docs directory `cd [path to this repo]/docs`
5. Run `make html`
6. This will generate HTML in docs/build/html. Setup a web server with the web root as docs/build/html or open docs/build/html/index.html in a browser.
 
### Vale
Before pushing, run Vale and address suggestions and errors as applicable.
1. Install [`vale`][Vale] 
2. `vale .`

### PhpStorm/PyCharm File Watcher
You can automatically build changes to rst files using a file watcher. 
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
[Vale]: <https://docs.errata.ai/vale/install>
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
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!
