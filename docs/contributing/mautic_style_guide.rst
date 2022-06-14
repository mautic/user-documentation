Mautic style guide
##################
The Mautic Style guide recommends best practices that aims to bring about a consistent style, voice, and tone across the documentation. 

Vale
****
:xref:`Vale` is a natural language linter that supports plain text, markup (Markdown, reStructuredText, AsciiDoc, and HTML), and source code comments. Vale doesn't attempt to offer a one-size-fits-all collection of rules—instead, it strives to make customization as easy as possible.

.. vale off

How to install Vale
===================

.. vale on

Follow the steps in the :xref:`Vale` documentation to install Vale. 

You may find it preferable to install and run Vale Server when working locally, as it has more features available. If you do use Vale Server, once it's started you need to edit the file in the ``.vscode/settings.json`` file, and change ``"vale.core.useCLI": true``, to ``"vale.core.useCLI": false,``.

If you use VS Code and clone the Documentation repository, the Vale extension is already installed and configured, and you'll see prompts when you save the file.

Before pushing your code, run Vale and address suggestions and errors as applicable.

#. Install :xref:`Vale`
#. Run the command ``vale``

You can also run Vale on a file individually using the command vale `<filename>`, for example: 

.. code-block:: shell

     vale docs/campaigns/campaign_builder.rst.

You'll see the errors highlighted as you type if using VS Code, with all problems to fix listed under the **Problem tab**.

.. note:: 

   When you are making PRs, please ensure you are reviewing the Vale linter output, and you are checking your reStructuredText markup.

.. vale off

Tips on using Vale
==================

.. vale on

* You **must** fix errors **red**
* You should fix warnings **yellow**,
* You could fix suggestions **blue** a sometimes they're not relevant 

.. vale off

RST basic markup
****************

.. vale on

The reStructuredText is an easy-to-read plain text markup syntax and parser system. Below are some of the basic markup of reStructuredText markup.

Section
=======
Sections allow Sphinx to build tables of contents and divide up large documents.

::

    First level
    ###########

    Second level
    ************

    Third level
    ============

    Fourth level
    ~~~~~~~~~~~~


Italics, bold and backticks 
===========================

There are a few special characters used to format text. The special character `*` is use to defined bold and italic text. You can write bold using two `**`, and italics using one `*`.

To denote a word or phrase as code, enclose it in backticks **`**. 

There is an example here below:

.. list-table::
   :widths: 30 40 30

   * - **Format**
     - **Syntax**
     - **Output**
   * - Italics
     - ``*italics*`` single asterisk
     - *italics*
   * - Bold
     - ``**bold**`` double asterisk
     - **bold**
   * - Backticks
     - `` ``backticks`` `` double back quote
     - ``backticks``

List
====
There are two types of list: **unordered list** and **ordered list**

Unordered list
~~~~~~~~~~~~~~
An **unordered list** looks like this::

    * First item
    * Second item
 

Output

* First item
* Second item


Ordered list
~~~~~~~~~~~~~
An **ordered list** looks like this::

    #. First item
    #. Second item
   
Output

#. First item
#. Second item

Tables
======
Tables are very useful for presenting complex information.

.. code-block:: RST
  :emphasize-lines: 9

  .. list-table:: Title
     :widths: 25 25 50
     :header-rows: 1

     * - Heading row 1, column 1
       - Heading row 1, column 2
       - Heading row 1, column 3
     * - Row 1, column 1
       - 
       - Row 1, column 3
     * - Row 2, column 1
       - Row 2, column 2
       - Row 2, column 3
       - 

Output:

.. list-table::
   :widths: 30 40 30

   * - Heading row 1, column 1
     - Heading row 1, column 2
     - Heading row 1, column 3
   * - Row 1, column 1
     - 
     - Row 1, column 3
   * - Row 2, column 1
     - Row 2, column 2
     - Row 2, column 3


Notes and warning
=================
When it's beneficial to have a section of text stand out from the main text, Sphinx has two such boxes, the note and the warning. They function identically, and only differ in their coloring. You should use notes and warnings sparingly, however, as adding emphasis to everything makes the emphasis less effective.

Here is an example of a note::

   .. note:: This is a note.

Output:

.. note:: 
   This is a note.

Here is an example of a warning::

   .. warning:: This is a warning.

Output:

.. warning:: Beware of dogs.


Images
======
Add images to your documentation when possible. Images, such as screenshots, are a very helpful way of making documentation understandable.

Here is an example of image::

   .. image:: images/GitpodWelcome.png
   :width: 600
   :alt: Gitpod Welcome

Output:

.. image:: images/GitpodWelcome.png
  :width: 600
  :alt: Gitpod Welcome

Links
=====

RST provides several ways for linking to resources within and outside the Mautic documentation:

Internal links
~~~~~~~~~~~~~~

- To link on the same page to a heading, use

.. code-block:: 
  
  :ref:`Heading anchor`
  
- To use custom text for the phrase linked, use 

.. code-block:: 

  :ref:`Custom text<Heading Text>`

- To link to another pages, use 

.. code-block:: 
  
  :doc:`page`
  
- If the page is within a subdirectory, use

.. code-block:: 

  :doc:`/folder/page`

Note the first / - this is important). 

- To use custom text with a doc reference, use 

.. code-block:: 
  
  :doc:`Custom text </folder/page>`

External links
~~~~~~~~~~~~~~

The external links extension allows you to set up a link in one place - the ``/links`` directory - and reference the link in multiple places across the documentation. It also allows the verification that all links are valid during the build process, highlighting any which are giving response codes suggesting a broken link.

To create a new external link, first **verify that it doesn't already exist in the /links directory**.

If there is no link already present, create a new file and name it so that others understand what it's linking to.

Use the following as a template, or copy and adapt an existing link:

.. code-block:: python

   from . import link
  
  link_name = "Link name" 
  link_text = "Anchor text used when link placed on a page" 
  link_url = "https://example.com" 

  link.xref_links.update({link_name: (link_text, link_url)})