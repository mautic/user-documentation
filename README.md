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