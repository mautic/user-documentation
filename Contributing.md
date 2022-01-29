# Contributing to Mautic

Mautic is an Open Source marketing automation platform. We welcome contributions to improve and maintain our documentation.

Mautic is made up of over 39 Git repositories. To contribute to the Mautic User guide, you must fork the [mautic-documentation](https://github.com/mautic/user-documentation) Git repository. You can also contribute to the [Developer documentation](https://mautic-developer.readthedocs.io/en/latest/) by forking the [developer-documentation](https://github.com/mautic/developer-documentation-new) Git repository.

<!-- ## Table of Contents -->

<!--
Use this site to generate the TOC list elements:

- https://ecotrust-canada.github.io/markdown-toc/

remove the first two lines
-->
- [Get Started](#get-started)
- [Report Issues and Fix Bugs](#report-issues-and-fix-bugs)
- [Documentation Repository Structure](#documentation-repository-structure)
- [Style guide](#style-guide)
- [How to contribute](#how-to-contribute)
  * [Using Grav](#using-grav)
  * [Using GitHub](#using-github)
    + [Editing documentation using the command-line](#editing-documentation-using-the-command-line)
    + [Editing documents in the GitHub browser interface](#editing-documents-in-the-github-browser-interface)
- [Mautic specific information](#mautic-specific-information)
  * [Example domain references](#example-domain-references)
    + [Protocol scheme: http vs https](#protocol-scheme--http-vs-https)
  * [Linking to Release versions](#linking-to-release-versions)
    + [`latest` version](#-latest--version)
  * [References to _leads_ and _lead lists_](#references-to--leads--and--lead-lists-)
      - [reference note](#reference-note)
      
      ## Get Started
 Although we support using both GitHub and Grav for making changes to the documentation, we'd prefer contributions using GitHub for the following reasons:

- *versions* - Anyone can restore previous versions or refer to any version of the file.
- *authorship* - Not only every file but every line has its author.
- *community contributions* - You needn't worry about deleting someone else's work while working on the same document.
You might require some knowledge of Git to clone, modify, commit, and push changes. However, there is a way to avoid that and edit the files directly in the GitHub web interface or via our web-based interface using the Grav CMS. To learn how to contribute using GitHub, see [Using GitHub](#using-github). If not, you can contribute easily [using Grav](#using-grav).
## Report Issues and Fix Bugs
If you intend to make any changes to the documentation, we recommend filing an issue. This allows us to reach an agreement on your proposal before you put significant effort into it. To report new issues or fix existing issues, visit the [Mautic Documentation Issues](https://github.com/mautic/user-documentation/issues)page on GitHub.
A great place to start and familiarize yourself with our contribution process is to take a look at the list of **`good first issues`** that we have earmarked for new contributors. These issues have a relatively limited scope.
If you wish to fix an issue, please check the comment thread to ensure that no one else is already working on a fix. If nobody is working on it at the moment, please leave a comment stating that you intend to work on it to avoid any accidental duplication of your effort.

## Documentation Repository Structure
The Mautic documentation repository consists of the following files and folders:

The **`README.md`** file serves as the introduction and description of this repository. This file does not contain any product documentation.
The folders in this repository are grouped together by topics. 
 - The **`pages`** folder contains folders for each chapter in the Mautic user guide. Each folder contains *.md* files (one per language - currently English only) that you can edit along with images used in this page. For example, within the *Campaigns* folder, you'll sub-folders for subtopics such as *Managing Campaigns*, *Campaign Events*, etc. Each of these folders contain its own **`docs.en.md`** file and all images used in the *.md* files.
  - Similarly, the **`plugins`** folder contains folders for each plugin that Mautic offers.
   - The **`themes`** folder contains all the themes available for this repository. Each folder contains supporting files for a separate theme.
   
## Style Guide

For keeping contributions consistent, we encourage you to read our Style Guide which is a set of conventions that we follow while writing documentation for Mautic. You can find our Style Guide [here][style guide].

## How to contribute

### Using Grav

Previously GitBook was used to manage the Mautic documentation. However, this became cumbersome to maintain and difficult for those who were not familiar with Git. After exploring various solutions, the Education Team decided that Grav would best meet the needs of the Community.
1. Go to [the login page][mautic-docs-login]. Create a Mautic Community login, or log in with your existing forum/website account.
1. Send a message on the [Documentation slack channel][mautic-docs-slack] to have your account raised to 'editor' - get a Slack invite [here][mautic-slack-invite].
1. When logged in, go to the admin panel (ask the team for the link) and make your changes.

### Using GitHub

1. Fork this [GitHub][mautic-docs-github] repository.
1. Select a file to edit on your fork.
1. Make your commits.
1. Open a pull request to `base fork: mautic/mautic-documentation` with `base: master`.
1. Include and reference any [Issues][doc-issues] your Pull Request addresses. Be sure to write 'closes #0001' if your PR will close an existing issue, so that they are automatically linked.

#### Editing documentation using the command-line

If you want to edit documents using the Git command-line system, read this section. You can also use the GitHub CLI utility that makes working at the command line easy.

1. In the command-line `cd` to where you want the documentation repository to be located.
1. Clone this repository.


 ```console
 git clone https://github.com/mautic/mautic-documentation.git --origin upstream
 ```

1. Fork this repository at [GitHub][mautic-docs-github] or use the [`hub`][hub] utility.

    ```console
    hub fork --remote-name origin
    ```

1. Once cloning has completed, open the project in the editor of your choice.
1. Create a new branch for your edits. Please name your branch something descriptive like `{yourusername}-revision-readme-file`

    ```console
    git checkout -b {yourusername}-revision-readme-file upstream/master
    ```
    . Make your changes.
1. Stage and commit your changes to your _local_ repository.

    ```console
    git status --short
    git add <new and modified files>
    git commit --message 'move contributing to new file'
    ```

1. Push to `origin`.

    ```console
    git push origin
    ```

1. Review the changes at your fork -`https://github.com/{yourusername}/mautic-documentation`.
1. Submit your pull request using one of these methods:
   - Direct link - `https://github.com/{yourusername}/mautic-documentation/pull/new/{yourusername}-revision-readme-file`
   - GitHub web interface - `base fork: mautic/mautic-documentation` and `base: master` at [GitHub][mautic-docs-github]
   - Use the [`hub`][hub] utility

    ```console
    hub pull-request
    ```
    
    #### Editing documents in the GitHub browser interface

If you're unfamiliar with the Git command-line but still want to contribute to the Mautic documentation via GitHub, read this section.

Using *README.md* as an example:

1. [Fork][mautic-docs-fork] this repository under your account so you'll have permission to edit.
1. Select the *README.md* file . Refer to the [Mautic Documentation Repository Structure](#mautic-documentation-repository-structure) section. 
1. With the content of *README.md* visible, click on the pencil icon to begin editing the file.
1. After you've made a change, scroll down to the *Commit changes* form. Saving your change requires describing what was changed and why.
1. Before submitting your commit, select the box for *Creates a new branch* to start a new branch for your change. Name your branch something like `{yourusername}-revision-readme-file`
1. Select *Propose file change*.
1. In the next dialogue box, describe what you've changed and why then select *Create pull request* to open a pull request proposing we add your changes to our official repository.

>**Note**: If you are updating more than one file,  then you can select the newly created branch to switch to the branch, and then repeat this process until you have made all the required edits, before creating a pull request.

## Mautic specific information

### Example domain references






