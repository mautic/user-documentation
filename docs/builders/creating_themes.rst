Creating Themes
###############

:xref:`MJML` allows marketers to create and maintain beautiful and responsive Themes for Mautic easily.

.. vale off

Why use email Themes?
*********************

Purpose of a Theme
==================

.. vale on

The GrapesJS builder makes it possible to insert HTML code and edit it in a 'What You See Is What You Get' (WYSIWYG) environment.

A Theme can feature a wide variety of predefined blocks and sections reflecting the desired Email design - a template from which to start.

By choosing a Theme, you can create beautiful Emails very efficiently.

.. vale off

Modifying legacy Themes
=======================

.. vale on

The GrapesJS Builder checks the Theme configuration file before listing the available Themes, to determine which are compatible with the Builder.

Since :xref:`Mautic 3` a new line defines the compatible Builders:

File name: config.json

.. code-block:: json

    {
        "name": "Great Theme",
        "author": "Mr. Robot",
        "authorUrl": "https://mautic.org",
        "builder": "grapesjsbuilder",
        "features": [
            "email"
        ]
    }

With the builder/s defined, the Theme shows in the Theme selection page.

If you wish to support more than one Builder, specify them in an array: ``"builder": ["legacy", "grapesjsbuilder"],``

.. vale off

Creating a Theme from scratch
*****************************

.. vale on

HTML markup
===========

It's possible to use HTML for Themes, and the GrapesJS builder offers basic WYSIWYG editing capabilities.

Once converted into HTML, however, the structure is table based, and the blocks are hard to move around. For this reason, MJML Themes are preferable.

MJML markup
===========

The MJML language allows the creation of blocks which can be freely moved around in the editor, changing the layout fundamentally without coding.

In order to harness the power of MJML, you must code the whole Theme in MJML.

The best place to do so is the online editor at :xref:`MJML`.

Documentation on using sections, columns, and blocks is available in the :xref:`MJML Documentation`

.. vale off

Head Components
===============

.. vale on

Mautic processes most of the ``<mj-head>`` components. ``<mj-attributes>`` do not run.

**Tested elements** are: mj-breakpoint, mj-font, mj-html-attributes, mj-style, mj-title, mj-preview 

.. vale off

Body Components
===============

.. vale on

At present, Mautic processes most ``<mj-body>`` components.

**Tested elements** are: mj-button, mj-column, mj-divider, mj-image, mj-navbar, mj-section, mj-spacer, mj-text

.. vale off

Image Asset relative URLs
=========================

.. vale on

Images have to refer to the Themes folder the following way: 

``<mj-image src="{{ getAssetUrl('Themes/'~Theme~'/assets/imagename.ext', null, null, true) }}" alt="logo" align="center" width="105px" padding="10px 0"></mj-image>``

File structure

.. code-block:: 

    name.zip
    ├── assets
    │   ├── image1.ext
    │   └── image2.ext
    ├── html
    │   ├── email.html.twig
    │   ├── email.mjml.twig
    │   ├── base.html.twig
    │   └── message.html.twig
    ├── config.json
    └── thumbnail.png

Steps to save the Theme package
===============================

Once you have finalized your design in MJML, go through the following steps to create the Theme package:

* Save your images in the Assets folder.

* Save your MJML in the ``html`` folder as ``email.mjml.twig`` **and** ``email.html.twig``.

* Use the ``base.html.twig`` and ``message.html.twig`` files from the basic Theme or make your changes there.

* Save your ``config.json`` as described previously

* Create a thumbnail -  use the dimensions of 400px wide, 600px high.

* Compress the contents of the folder as a Zip file - ensure that the files and folders aren't within a sub-folder in the Zip file.
