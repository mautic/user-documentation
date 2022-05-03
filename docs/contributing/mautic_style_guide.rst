Mautic Style Guide
##################

The Mautic Style guide recommends best practices that aims to bring about a consistent style, voice, and tone across the documentation. 

Vale
#####
Vale is a natural language linter that supports plain text, markup (Markdown, reStructuredText, AsciiDoc, and HTML), and source code comments. Vale doesn't attempt to offer a one-size-fits-all collection of rules—instead, it strives to make customization as easy as possible.

How to Install Vale
###################
Before pushing, run Vale and address suggestions and errors as applicable. you will see the errors highlighted as you are typing, and under the ‘Problem’ tab.

#. Install vale
#. vale

You can also run Vale on a file individually using the command vale <filename> if you prefer to see this in the terminal - for example: vale docs/campaigns/campaign_builder.rst.

Note 
*****

When you are making PRs, please ensure you are reviewing the Vale linter output, and you are checking your RST markup.

Tips on Using Vale
##################
You **must** fix errors **red**, for e,g companies - Companies
you should fix warnings **yellow**,
and you could fix suggestions **blue** [but sometimes they are not relevant - for example here it’s suggesting to change Do Not Contact to Don’t Contact but we need to use the full form as it’s a feature of Mautic].

RST Basic Markup
################
A reStructuredText document is written in plain text. Without the need for complex formatting, one can be composed simply, just like one would any plain text document. We have some list below:

Section
#######
We Use sections to break up long pages and to help Sphinx generate tables of contents.

first level
############

second level
************

third level
============

Italics and Bold
*****************

There are a few special characters used to format text. The special character `*` is used to defined bold and italic text. We can  write bold using two `**`, while we use one `*` to write an italic.

There is an example here below:

Italics
========
*italic text* → italic text.

Bold
====
**bold text** → bold text.




Monospace
*********
When referring to code objects, it’s better to use markup that links to the object’s API documentation .


Here is an example below:

Monospace
==========
``monospace text`` → monospace text


List
*****
We have  two types of list , which are **unorderd list** and **ordered list**

Unorderd list
=============
Unordered lists can be written as:

* This is a bulleted list.
* It has two items, the second item uses two lines.

ordered list
=============

#. This is a numbered list.
#. It has two items too.

Tables
******
There are several ways to write tables. Use standard reStructuredText tables as explained here. They work fine in HTML output, however, there are some gotchas when using tables for LaTeX output.
Look at the examples here below:

.. _table-label:

.. table:: Table caption.

    +------------------------+------------+----------+----------+
    | Header row, column 1   | Header 2   | Header 3 | Header 4 |
    | (header rows optional) |            |          |          |
    +========================+============+==========+==========+
    | body row 1, column 1   | column 2   | column 3 | column 4 |
    |                        | with many  | spans    |          |
    |                        | rows       | both     |          |
    +------------------------+------------+ rows     +----------+
    | body row 2             | ...        |          | ...      |
    +------------------------+------------+----------+----------+

Note how cells can be joined by omitting the dividing line. The `=` characters divide the header from table content. Text in the header is set in bold.

You can write tables with multiple header rows, including spans across header cells:

.. _rst-table-multi-header-example:

.. table:: Table with two header rows, including a span.

   +---------------------------------------------------+
   | centos-7-stack-lsst_apps-w_2015_45-20151130234354 |
   +-----------+---------------------------------------+
   | Region    | AMI                                   |
   +===========+=======================================+
   | us-east-1 | ami-e2490b88                          |
   +-----------+---------------------------------------+
   | us-west-2 | ami-9a0f1dfb                          |
   +-----------+---------------------------------------+

In the simplest cases, tables are not required to have headers, or even be inside a `table` directive.

+-----------+--------------+
| us-east-1 | ami-e2490b88 |
+-----------+--------------+
| us-west-2 | ami-9a0f1dfb |
+-----------+--------------+

Be sure to leave a blank line before and after the `table` directive.


Notes and warning
*****************


When it is beneficial to have a section of text stand out from the main text, Sphinx has two such boxes, the note and the warning. They function identically, and only differ in their coloring. You should use notes and warnings sparingly, however, as adding emphasis to everything makes the emphasis less effective.

Here is an example of a note:

.. note:: This is a note.

Similarly, here is an example of a warning:

.. warning:: Beware of dogs.


Images
******
Add images to your documentation when possible. Images, such as screenshots, are a very helpful way of making documentation understandable.

.. image:: images/primary-company.png
  :width: 600
  :alt: primary-company





 






