.. vale off

Manage Themes
#############

.. vale on

Themes control the look and feel of the Mautic landing pages, Emails, Forms and message screens. A basic Mautic installation comes pre-packaged with a number of Themes which can be used 'as-is' or adapted to suit specific projects. It's also possible to :xref:`create a Theme` for Mautic from scratch.

Since Mautic 2.1.0, you can access the Theme Manager via the Admin Menu. Click the cog icon in the top right corner to open it and select the Theme menu item.

The Themes page displays the list of Themes with the following details:

**Title** - The name or title of the Theme.

**Author** - The name of the author or creator of the Theme.

**Feature** - The list of features that the Theme supports.

This list of Themes appears as selectable options in Forms. Additionally, you can edit and customize them in the Email and Landing Page builders to meet your company’s needs. With the Email and Landing Page builders, you can build Email and Landing Page Themes as templates. For more information, see :doc:`Email builder</builders/email_landing_page>` and :doc:`Landing Pages</components/landing_pages>`. Also, the templates saved from the landing page and Email builders appear in the list of Themes on the Themes page.

.. vale off

Installing a Theme
******************

.. vale on

It's necessary to install a new or edited T heme as a zip package. The zip package must have the same structure as the preinstalled Themes and the config.json file must be present in the root folder of the zip package. The :xref:`themes developer documentation` contains more on that.

.. note:: 

    You must select and zip all the files when creating the zip package. Ensure that you don't zip the file folder, otherwise, the Theme won't install.

You can build and install your own Forms Theme using ``TWIG`` and you can also install BeeFree templates as Themes.

To install a user-created Theme:

1. Log in to Mautic.

2. Click the **Settings** icon.

3. Click **Themes**.

4. On the Themes page, in the top-right corner, click **Choose file**.

5. Browse and select the Theme.

6. Click **Install**.

.. vale off

Deleting a Theme
****************

.. vale on

To delete a user-created Theme:

1. Log in to Mautic.

2. Click the **Settings** icon.

3. Click **Themes**.

4. On the Themes page, locate the Theme that you want to delete.

5. Select the drop-down before the Theme, and click **Delete**.

6. In the confirmation dialog box, click **Delete**.

.. vale off

Previewing a Theme
******************

.. vale on

To preview a Theme:

1. Log in to Mautic.

2. Click the **Settings** icon.

3. Click **Themes**.

4. On the Themes page, locate the Theme that you want to preview.

5. Select the drop-down before the Theme, and click **Preview**.

6. Mautic displays the preview of the Theme.

.. vale off

Downloading a Theme
*******************

.. vale on

To download a Theme:

1. Log in to Mautic.

2. Click the **Settings** icon.

3. Click **Themes**.

4. On the Themes page, locate the Theme that you want to download.

5. Select the drop-down before the Theme, and click **Download**.

Upon downloading a Theme on your local machine, you can modify it following the structure outlined in the developer documentation before reinstalling it for use in your instance.

.. vale off

Update an old Theme
*******************

.. vale on

The old Theme files is overwritten by the new one when installing a Theme which already exists in your Mautic. Therefore, the Theme updates can be also done by the Theme Manager's Install Form.

The pre-installed Themes can't be overwritten because the changes would return again after a Mautic update.

.. vale off

Assigning a default Theme
*************************

.. vale on

You can assign your Mautic instance a default Theme for landing pages. Then use the landing page builder to fill in the content for each new landing page you create.

.. image:: images/theme.png
    :width: 600
    :alt: Screenshot of Theme

.. note:: 

    Changing the Theme after building the page may cause content to not display if the two Themes don't use the same placeholders.

To assign a default Theme:

1. Log in to Mautic.

2. Click the **Settings** icon.

3. Click **Configuration**.

4. Click Theme **Settings**.

5. From the dropdown menu, select the Theme that you want to use as default.

6. Click **Save & Close**.

Themes are available for Emails and landing pages on each one's main editing landing page

.. image:: images/themes2.jpeg
    :width: 600
    :alt: Screenshot of all Themes






















