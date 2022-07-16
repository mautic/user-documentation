.. vale off

How to switch to Composer
#########################

.. vale on

Until Mautic 4, you could download Mautic as a ZIP file and install it on any PHP server. 
However, many Users were running into installation and update errors, many of which caused considerable frustration and in some cases, significant business disruption. 

Next to that, Mautic recently introduced the :ref:`Mautic Marketplace` which isn't compatible with this installation method.

As a result of the reasons mentioned above, Composer becomes the default method for installing and updating Mautic starting with the release of Mautic 5. Read more in :xref:`composer blog post`.

How to switch to a Composer-based installation?
***********************************************

Before starting, it's good to understand that there's two aspects to Mautic:

* The database - This is where Mautic stores your Contact data.

* The codebase - This is where Mautic interacts with the database.

When switching to a Composer-based installation, the **database** isn't touched, only the **codebase.**

In this tutorial, it's assumed that Mautic is currently installed in ``/var/www/html``.

Here's the steps to follow to switch to a Composer-based installation:

#. Go to ``/var/www``

#. Run ``composer create-project mautic/recommended-project:^4 html-new --no-interaction``

#. Copy the following files and folders from ``/var/www/html`` to ``/var/www/html-new``:

   * Configuration files - in most cases, located at ``app/config/local.php`` - move to ``docroot/app/config/local.php``

   * The entire ``plugins`` directory - move to ``docroot/plugins``.
 
   * Uploads - in most cases, located at ``app/media/files`` and ``app/media/images`` - move to ``docroot/app/media/files`` and ``docroot/app/media/images`` respectively.

   * Custom dashboards from ``app/media/dashboards`` - move to ``docroot/app/media/dashboards``
   
   * Any custom Themes from ``themes`` - move to ``/docroot/themes``

   * Any translations from ``translations`` - move to ``/docroot/translations``

#. Rename ``/var/www/html`` to ``/var/www/html-old`` and ``/var/www/html-new`` to ``/var/www/html``

#. Update your web server configuration to point to ``/var/www/html/docroot`` instead of ``/var/www/html``

#. Log in to Mautic, and in your global settings enable the switch to fully manage Mautic with Composer - this will also enable you to work with the Mautic Marketplace.

.. image:: images/switch-enable-composer.png
  :width: 600
  :alt: Screenshot of switch enable Composer

You have successfully switched to a Composer-based installation. Test Mautic to see if it works as expected.

.. vale off

Frequently Asked Questions (FAQs)
*********************************

Q: Is existing data retained?

A: Yes, switching to the Composer-based installation only affects app files. It doesn't affect your data in any way.

Q: What's the minimum Mautic version required to switch to the Composer-based installation?

A: It is necessary to have at least Mautic 4.0.0 in order to switch to a composer-based installation.

.. vale on

