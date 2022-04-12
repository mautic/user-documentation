Contributing to the Mautic documentation
########################################

We welcome contributions to improve and maintain Mautic documentation.

To contribute to the Mautic user documentation, fork the :xref:`Mautic GitHub User Documentation` repository.

To contribute to the Mautic developer documentation, fork the :xref:`Mautic GitHub Developer Documentation`.

These guidelines outline how to contribute to the Mautic documentation hosted on GitHub. Make proposed changes by submitting a pull request (PR).

- :ref:`Understanding the Repository Structure`
- :ref:`Finding an Issue`
- :ref:`Creating an Issue or Proposing Changes`
- :ref:`Contributing Changes`
   - :ref:`Using Git on the Command Line`
   - :ref:`Using GitHub Desktop`
   - :ref:`Using Web Browser`
   - :ref:`Using Gitpod`
   - :ref:`Cloning Repository`
   - :ref:`Creating a Branch`
- :ref:`Git Guidelines`
   - :ref:`Cloning Repository`
   - :ref:`Creating a Branch`
   - :ref:`Commiting Edits`
   - :ref:`Creating a Pull Request`
- :ref:`Looking for help`


Understanding the Repository Structure
**************************************

Mautic documentation is written using ReStructuredText (:xref:`RST`). The files are appended with the *.rst* extension.

When you fork the Mautic user documentation repository, the repository includes the following files and folders:

- **README.md**: this file introduces and describes the repository, but does not contain any product documentation.
- **docs**: this folder contains folders for each section in the Mautic user guide. 
- **docs/links**: this folder contains a file for each external link used in this repository
- **styleguide**: the style guide contains rules and guidelines for for submitting content with a consistent tone, voice, and messaging across the Mautic user documentation. We encourage you to read the :doc:`/contributing/mautic_style_guide` .
- **index.rst**: this file serves as a home page for the documentation, including references to all other pages in the documentation.
- **requirement.txt**: this file contains all the packages and dependencies requirements you need to have installed.

Finding an Issue
****************

You can familiarize yourself with the Mautic contribution process by reviewing the list of **issues** on the :xref:`Mautic Docs issues` section. These issues have a relatively limited scope. 

After you have selected an issue on the :xref:`Mautic Docs issues` page, follow the below steps:
 1. Add a comment indicating that you would like to own the ticket. This is to avoid conflicts with others also working on the issue.
 2. After a Mautic administrator assigns you the issue, you can modify files and track changes on GitHub using command line utility, your web browser, GitHub Desktop, or Gitpod.
 3. Submit a pull request, and the Mautic administrator will review your changes.

Creating an Issue or Proposing Changes
*************************************

You can create an issue or propose changes by following these steps:
1. Create a new GitHub issue associated with the relevant repository and propose your change there. Be sure to include implementation details and the rationale for the proposed change.
2. The submitted issue will be reviewed by the Mautic administrator.
3. If the Mautic administator approves the issue you may start working on the task


Different Methods of Contributing Changes
****************************************

This section explains the different methods you can use to create pull request to submit changes and collaborate.

Using Git on the Command Line
*****************************

Using Git, you'll need to fork  this :xref:`Mautic GitHub User Documentation` repository and clone the Mautic user documentation repository on your machine to edit the documents locally. Changes are proposed in a branch, which ensures that the default branch only contains finished and approved work. The changes can then be commited for tracking, and submitted as a PR link with Mautic reviewers. 

Git requires a GitHub user account, a terminal running bash, and a computer with Git installed and configured. If you want to work with Git locally, without using the command line, you can work with the :ref:`GitHub Desktop<Using GitHub Desktop>` client.
Alternatively, you can also install GitHub CLI to use GitHub from the command line. For more information, visit the :xref:`GitHub CLI` page.

To edit documents using Git:

#. Launch the command-line tool on your machine.
#. Change the working directory in the terminal to the location where the documentation repository will reside using the ``cd`` command.
#. Clone the Mautic user documentation repository.

   .. code-block:: shell

   gh repo clone mautic/mautic-documentation

#. Create a new branch to manage your edits, and name it descriptively. For example, ``{yourusername}-revision-readme-file``. You can do this either at the command line using the syntax below:

    .. code-block:: shell

    git checkout -b {yourusername}-revision-readme-file upstream/main
    
#. After editing the documents, commit your edits to your local repository, and add a commit message. The Git commit command requires a commit message that describes what has changed and why so that collaborators to track, review, and merge the edits.

   .. code-block:: shell

      git status --short
      git add <new and modified files>
      git commit --message "move contributing to new file"

#. Push the current branch to GitHub to synchronize the changes, and set the remote as upstream.

   .. code-block:: shell

   git push --set-upstream origin {username}-revision-readme-file

   You will be prompted to enter your GitHub login credentials.

#. After you’ve pushed your commits, visit your repository on GitHub to view the reflected changes and the commit history. Review the changes at your fork - ``https://github.com/{yourusername}/user-documentation.``

#. Submit a pull request for a review of the commited changes. For more information, visit the :ref:`Creating a Pull Request` section.
   
For more Git command line instructions, view the :xref:`Git Cheatsheet`. 

Using GitHub Desktop
********************

Using :xref:`GitHub Desktop`, you can clone the Mautic user documentation repository on your machine, and edit the documents locally. Changes are proposed in a branch, which ensures that the default branch only contains finished and approved work. The changes can then be reviewed in GitHub Desktop and commited for tracking.

Using Web Browser
*****************

You're making changes in a project you don't have write access to. Submitting a change will write it to a new branch in your fork {username}/user-documentation, so you can send a pull request.

To contribute content using the GitHub web browser:

1.  Navigate to the :xref:`Mautic GitHub User Documentation` repository, and **Fork** it to add it to your profile repositories.
2. Select a file, and click the **Edit** icon in the upper-right corner of the page to edit the document.
3. After scrolling down the Propose Change section of the page, add descriptive text explaining what you have changed and why.
4. Click **Propose Changes**.
5. On the Comparing Changes page, review and edit the branch for commiting the changes. If desired, create a new branch to manage your contributions.

.. note::
   If you are updating more than one file, then you can select the newly created branch to switch to the branch, and then repeat this process until you have made all the required edits, before creating a pull request.

6. Click **Create pull request**.
7. On the Open a pull request page:
    - Enter details about the changes you have made to the document.
    - Reference any :xref:`Mautic Docs issues` that the current pull request (PR) resolves so that they are automatically linked. For example, if the PR closes an existing issue #0001, reference it in the description as 'closes #0001'.
    - @mentions of the Mautic administrator for reviewing the proposed changes.
8. Click **Create pull request**.
9. Share the pull request (PR) link in the #t-education channel on :xref:`Mautic Community Slack`.

Using Gitpod
************

To launch your local Mautic workspace in your browser using Gitpod:

1. Navigate to Mautic's documentation repository on GitHub in your browser. Ensure you have already made a personal fork as described above. 
2. In the browser's address bar, prefix the entire URL to the repository, branch or pull request you want to open in Gitpod with gitpod.io/# - for example https://gitpod.io./#https://github.com/{username}/user-documentation, and press **Enter**.
3. Within the Mautic ephemeral developer environment, **'welcome.md'** displays suggesting the next steps.

.. image:: images/GitpodWelcome.png
  :width: 400
  :alt: Screenshot of Gitpod Welcome

4. Edit your documents.
5. To commit your changes, click on the **source control** icon in the navigation side bar.
6. On the Source Control page, click on the **checkmark icon** next to the files you have edited to stage the changes (preparing to commit the changes).
7. Enter a brief description to explain your commits, and then click on the **checkmark icon** next to the Source Control header to commit those changes.


.. image:: images/Gitpodsync.png
  :width: 400
  :alt: Screenshot of Gitpod commit screen

8. Click **Sync Changes** to push and pull commits from the main origin which can also be accessed by clicking the three dot menu, and selecting 'Pull, Push' followed by 'sync'.

Git Guidelines
***************

This section guides you on the basic required git steps.

Cloning Repository
==================

The Mautic repository can be cloned directly from the GitHub Desktop application or from the browser. 

To clone a reporitory from the browser:
#. Navigate to the :xref:`Mautic GitHub User Documentation` repository, and **Fork** it to add it to your profile repositories.
#. Clone the project from your online GitHub account to have a local copy of the project. Ensure that the development environment setup is exactly as stated in the project's readme file.

Creating a Branch
=================

To create a branch for managing your documentation updates:

#. Launch the GitHub desktop client on your machine.
#. On the GitHub graphical user interface (GUI), select **user-documentation** as your **Current Repository** displayed in the upper-left corner of the GitHub desktop client.
#. To create a new branch, select **Current Branch** displayed in the upper-middle section of the GitHub GUI. The Branches window expands to display the different branches and pull requests available in the Mautic user documentation.
#. On the **Branches** window, click **New Branch** in the **Branches** section.
#. On the **Create a Branch** window, enter a descriptive **Name** (for example, {your-username}-{issue-that-is-going-to-be-fixed}), and click **Create Branch**.

You can now edit your document locally. 

Commiting Edits
===============

After editing your document, you must commit your edits locally to the branch before publishing it for review.

To push your edits to your local branch:

#. In the upper section of the GitHub GUI, select the **Current Repository** tab.

The **Current Repository** section lists the changes you have made to your file.

#. In the bottom section of the **Current Repository** tab, enter a brief summary and a message describing the key edits you have made to your document. 

Refer to repository guidelines.

#. Click **Commit to {branch name}**. The changes are committed to the local branch on your machine.


Creating a Pull Request
***********************

The commited changes can be submitted for review by creating a pull request.

To create a pull request:

#. Navigate to your GitHub account (for example, https://github.com/{username}) on the portal.
#. Click on your profile in the upper-right corner to select **Your repositories > user-documentation**.

A notification detailing your push to your branch with a button labeled **Compare & pull request** is displayed at the top of the Comparing changes page.

#. Click **Compare & pull request**.
#. On the Open a pull request page:
    - Enter details about the changes you have made to the document.
    - Reference any :xref:`Mautic Docs issues` that the current pull request (PR) resolves so that they are automatically linked. For example, if the PR closes an existing issue #0001, reference it in the description as 'closes #0001'.
    - @mentions of the Mautic administrator for reviewing the proposed changes.
#. Click **Create pull request** to generate the PR link.
#. Share the pull request (PR) link in the #t-education channel on :xref:`Mautic Community Slack`.


Looking for Help
****************

 You can join the :xref:`Mautic Community Slack` to connect with other documention writers and the wider community, if you aren’t already a member. Mautic documentation conversations are organized in the #t-education and #doc channels.
