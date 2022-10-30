.. vale off

Customizing Themes
##################

.. vale on

It's possible to customize Themes, or even to create your own from scratch, with Mautic. To do this go to the Theme Manager, open the drop down menu next to the pre-installed Theme you want to modify and download it.

.. vale off

Customizing an existing Theme
*****************************

.. vale on

To customize the downloaded Theme, unzip the files to an empty folder. Name the folder as the new name of your Theme. Then edit the following files to amend the Theme paths and name:

``theme.css`` - rename to match your Theme name
``config.php`` - amend Theme name
``base.html.php`` - amend file-path for CSS import to use new folder and CSS filename, amend the default page title from 'Mautic'

HTML and ``TWIG`` are the two languages used to create Mautic Themes.. To make amendments to the structure or layout, edit the files in the new Theme and upload them to your instance. Make sure your hosting provider doesn't have the cache turned on. If so, updates to CSS files might not happen immediately.
















