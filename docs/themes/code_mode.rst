.. vale off

Code mode
##########

.. vale on

Code Mode is an option available in the Email and Landing Page edit Form. It allows you to create/insert/edit your content in HTML code. It's helpful for situations where you don't want to use a Mautic Theme and you want to use an HTML Theme copied from a ``3rd`` party Theme builder or if you enjoy editing HTML code so much.

With Mautic 2.3.0, Code Mode replaced the full-page Froala (WYSIWYG) editor that sometimes altered the HTML code. Code Mode won't modify any of the code you paste in. The other option to edit a page/email content is to use the Builder. It uses Froala editor only to edit the text/image content, not the full page, so that it won't modify the page layout.

Select the Code mode
********************

After creating or editing the Landing Page/Email, you can select code mode from the Theme selector. To open the code mode Builder, click the advanced tab which appears.

.. image:: images/code-builder.png
    :width: 600
    :alt: Screenshot of code mode builder 

Limitations
===========

If you use a Mautic Theme to create the Landing Page/Email and you want to edit the HTML code of it in the code mode Builder, you can do so, but you can't switch back to the Theme again. The code mode Builder requires editing of all content. Selecting a Theme replaces the content to the default Theme HTML, so you'll lose your modifications.  Instead, to make small code changes to the page once a theme is selected, it is recommended to use the code mode built into the GrapesJS builder.

.. image:: images/theme-list.png
    :width: 600
    :alt: Screenshot of code mode

.. vale off

Edit the HTML content in the code mode Builder
==============================================

.. vale on

In code mode, you can see the HTML content in the text area. There is no preview at this time.

Mautic tokens
=============

You can use the tokens in the code mode Builder by typing them directly into your code. For example when you type ``{contactfield=firstname}``.

.. tip:: 

    Don't zip these files within a folder 