Contributing to the Mautic documentation
########################################

Mautic welcomes contributions to improve and maintain Mautic documentation.

To contribute to the Mautic documentation, fork the :xref:`Mautic GitHub User Documentation` repository.

To contribute to the Mautic developer documentation, fork the :xref:`Mautic GitHub Developer Documentation`.

These guidelines outline how to contribute to the Mautic documentation hosted on GitHub. Make proposed changes by submitting a pull request (PR).

- :ref:`Understanding the Repository Structure`
- :ref:`Finding an Issue`
- :ref:`Creating an Issue or Proposing Changes`
- :ref:`Different Methods of Contributing Changes`
   - :ref:`Using Git on the Command Line`
   - :ref:`Creating a Pull Request`
   - :ref:`Using GitHub Desktop`
   - :ref:`Using the web interface`
   - :ref:`Using Gitpod`
- :ref:`Looking for help`

Understanding the repository structure
**************************************

In Mautic, documentation uses ReStructuredText - :xref:`RST`. The files use the ``*.rst*`` extension.

When you fork the Mautic documentation repository, the repository includes the following files and folders:

- **README.md**: this file introduces and describes the repository, but doesn't contain any product documentation.
- **docs**: this folder contains folders for each section in the Mautic documentation. 
- **docs/links**: this folder contains a file for each external link used in this repository
- **style-guide.md**: the style guide contains rules and guidelines for submitting content with a consistent tone, voice, and messaging across the Mautic documentation. It's encouraged to read the :doc:`/contributing/mautic_style_guide` .
- **index.rst**: this file serves as a homepage for the documentation, including references to all other sections in the documentation.
- **requirement.txt**: this file contains all the packages and dependencies requirements you need to have installed.

Finding an issue
****************

You can familiarize yourself with the Mautic contribution process by reviewing the list of **issues** on the :xref:`Mautic Docs issues` section. These issues have a relatively limited scope. 

After you have selected an issue on the :xref:`Mautic Docs issues` issue queue, follow the below steps:

#. Add a comment indicating that you would like to own the ticket. This is to avoid conflicts with others also working on the issue.
#. After a member of the Education Team assigns you the issue, you can modify files and track changes on GitHub using command line utility, your web browser, GitHub Desktop, or Gitpod.
#. Once you submit a pull request, a member of the Education Team reviews your changes.

Creating an issue or proposing changes
**************************************

You can create an issue or propose changes by following these steps:

#. Create a new GitHub issue associated with the relevant repository and propose your change there. Be sure to include implementation details and the rationale for the proposed change.
#. A Mautic team member reviews all submitted issues.
#. Once approved, you may start working on the issue.


Different methods of contributing changes
*****************************************

This section explains the different methods you can use to create pull request to submit changes and collaborate.

.. vale off

Using Git on the Command Line
*****************************

.. vale on 

Using Git, you'll need to fork  this :xref:`Mautic GitHub User Documentation` repository and clone the Mautic  documentation repository on your machine to edit the documents locally. You must propose changes in a branch, which ensures that the default branch only contains finished and approved work. You can then commit changes for tracking, and submit them as a PR for the Education Team reviewers. 

To work with Git locally requires you to have Git installed and configured, and to have a GitHub account. If you want to work with Git locally without using the command line, you can work with the :ref:`GitHub Desktop<Using GitHub Desktop>` client.

Alternatively, you can also install GitHub command-line tool to use GitHub from the command line. For more information, visit the :xref:`GitHub CLI` resource.

To edit documents using Git:

#. Launch the command-line tool on your machine.
#. Change the working directory in the terminal to the location where you plan to save the documentation repository using the ``cd`` command.
#. Clone the Mautic documentation repository.

   .. code-block:: shell

      gh repo clone mautic/user-documentation

#. Create a new branch to manage your edits, and name it descriptively. For example, ``revision-readme-file``. You can do this either at the command line using the syntax below:

  .. code-block:: shell
  
     git checkout -b revision-readme-file upstream/main
    
#. After editing the documents, commit your edits to your local repository, and add a commit message. The Git commit command requires a commit message that describes what has changed and why so that collaborators to track, review, and merge the edits.

   .. code-block:: shell

      git status --short
      git add <new and modified files>
      git commit --message "move contributing to new file"

#. Push the current branch to GitHub to synchronize the changes, and set the remote as upstream. You may need to enter your GitHub login credentials.

   .. code-block:: shell

      git push --set-upstream origin revision-readme-file

#. After you've pushed your commits, visit your repository on GitHub to view the reflected changes and the commit history. Review the changes at your fork - ``https://github.com/{yourusername}/user-documentation.``

#. Submit a pull request for a review of the committed changes. 

.. vale off

Creating a Pull Request
=======================

.. vale on

Once you have made all changes, the Education Team needs to review them. The first step is to create a pull request.

To create a pull request:

#. Navigate to your GitHub account (for example, ``https://github.com/{username}``) on the portal.
#. Go to the Documentation repository, and GitHub shows notification detailing the recent push to your branch with a button labeled **Start a pull request**.

#. Click **Compare & pull request**.
#. When you Open a pull request:
    - Enter details about the changes you have made to the document.
    - Reference any :xref:`Mautic Docs issues` that the current pull request (PR) resolves so that they're automatically linked. For example, if the PR closes an existing issue #0001, reference it in the description as 'closes #0001'.
    - @mentions of the Mautic administrator for reviewing the proposed changes.
#. Click **Create pull request** to generate the PR link.
#. Share the pull request (PR) link in the #t-education Channel on :xref:`Mautic Community Slack`.

   
For more Git command line instructions, view the :xref:`Git Cheatsheet`. 

.. vale off

Using GitHub Desktop
********************

.. vale on

Using :xref:`GitHub Desktop`, you can clone the Mautic documentation repository on your machine, and edit the documents locally. You propose changes in a branch, which ensures that the default branch only contains finished and approved work. The changes are then reviewed in GitHub Desktop and committed for tracking.

Using the web interface
***********************

You're making changes in a project you don't have write access to. Submitting a change writes it to a new branch in your fork {username}/user-documentation, so you can send a pull request.

To contribute content using the GitHub web interface:

#.  Navigate to the :xref:`Mautic GitHub User Documentation` repository, and click the button at the top right to **Fork** it to add it to your profile repositories.
#. Select a file, and click the **Edit** icon in the upper-right corner to edit the document.
#. After making your changes, scroll down and add descriptive text explaining what you have changed and why.
#. Click **Propose Changes**.
#. Next, review and edit the changes from your branch for committing the changes. If you haven't already created a new branch do this now, to manage your contributions separately for each task you work on.

.. note::
   If you are updating more than one file, then you can select the newly created branch in the dropdown on the left hand side when you're viewing a file to switch to the branch, and then repeat this process until you have made all the required edits, before creating a pull request.

#. Click **Create pull request**.
#. Next in the open pull request interface:
    - Enter details about the changes you have made to the document.
    - Reference any :xref:`Mautic Docs issues` that the current pull request (PR) resolves so that they're automatically linked. For example, if the PR closes an existing issue #0001, reference it in the description as 'closes #0001'.
    - @mention the Mautic Education Team if appropriate for reviewing the proposed changes.
#. Click **Create pull request**.
#. Share the pull request (PR) link in #t-education on :xref:`Mautic Community Slack`.

Using Gitpod
************

To launch your local Mautic workspace in your browser using Gitpod:

#. Navigate to Mautic's documentation repository on GitHub in your browser. Ensure you have already made a personal fork as described in the preceding section. 
#. In the browser's address bar, prefix the entire URL of the repository, branch or pull request you want to open in Gitpod with ``https://gitpod.io/#`` - for example ``https://gitpod.io./#https://github.com/{username}/user-documentation``, and press **Enter**.
#. Within the Mautic ephemeral developer environment, **'welcome.md'** displays suggesting the next steps.

.. image:: images/GitpodWelcome.png
  :width: 400
  :alt: Screenshot of Gitpod Welcome

#. Create a new branch by clicking on the taskbar at the bottom left of the screen where it shows ``main`` as the default branch. At the top of the window you'll be able to enter a name for the new branch and press enter. At the bottom left, the branch name changes - this always shows which branch you are currently working on.
#. Edit your documents.
#. To commit your changes, click the **source control** icon in the navigation side bar.
#. On the Source Control section, click the **checkmark icon** next to the files you have edited to 'stage' the changes - preparing to commit the changes.
#. Enter a brief description to explain your commits, and then click the **checkmark icon** next to the Source Control header to commit those changes.


.. image:: images/Gitpodsync.png
  :width: 400
  :alt: Screenshot of Gitpod commit screen

#. Click **Sync Changes** to push and pull commits from the main origin which you can also access by clicking the three dot menu, and selecting 'Pull, Push' followed by 'sync'.

Looking for help
****************

You can join the :xref:`Mautic Community Slack` to connect with other documentation writers and the wider community, if you aren't already a member. Mautic documentation conversations happen in the #t-education and #doc Channels.
  