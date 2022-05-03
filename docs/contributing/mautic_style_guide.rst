Mautic style guide
##################
The Mautic Style guide recommends best practices that aims to bring about a consistent style, voice, and tone across the documentation. 

Vale
****
Vale is a natural language linter that supports plain text, markup (Markdown, reStructuredText, AsciiDoc, and HTML), and source code comments. Vale doesn't attempt to offer a one-size-fits-all collection of rules—instead, it strives to make customization as easy as possible.

How to install vale
===================
Before pushing, run Vale and address suggestions and errors as applicable.

#. Install vale
#. vale

You can also run Vale on a file individually using the command vale `<filename>`, for example: 

.. code-block:: shell

     vale docs/campaigns/campaign_builder.rst.

You'll see the errors highlighted as you type, and it would listed under the **Problem tab**.

.. note:: 

   When you are making PRs, please ensure you are reviewing the Vale linter output, and you are checking your reStructuredText markup.

Tips on using vale
==================
* You **must** fix errors **red**
* You should fix warnings **yellow**,
* You could fix suggestions **blue** a sometimes they're not relevant 

RST basic markup
****************
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

   .. image:: images/primary-company.png
   :width: 600
   :alt: primary-company

Output:

.. image:: images/primary-company.png
  :width: 600
  :alt: primary-company

