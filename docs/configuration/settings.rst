.. vale off

Mautic Configuration Settings
#############################

.. vale on

Proper configuration is important for branding, performance, and the user experience for your team as they do their jobs. 
These settings are generally permanent after initial configuration.


System settings
***************

General settings
================

.. image:: images/general-settings.png
  :width: 600
  :alt: Screenshot showing General Settings Configuration in Mautic

* **Site URL** - This is where Mautic is physically installed. Set the URL for this site here. Cronjobs needs this to correctly determine absolute URLs when generating links for Emails, etc. It 's also called Mautic base URL

* **Mautic’s root URL** - When a User signs in to their Mautic instance, they go to ``customdomain.domain.com (the root URL)``. 
However, that Landing Page is also accessible to the public. If a Contact visits that address, they see the Mautic login page for that instance. 

To brand that page, create a Mautic landing page that you’d want to greet any Contacts who visit your root URL. 
Once you’ve done that, Users can sign in into Mautic by visiting `customdomain.domain.com/s/login <customdomain.domain.com/s/login>`_ .

* **404 page** - Select the Landing Page that you want to use as the 404 page. If you don’t want to use Mautic’s default 404 error page, create a custom Landing Page and select that page here. If you don’t select any page, Mautic uses the default error page.


* **Path to the cache, log, and images directory** - They're the file system path to where the cache, logs and images are being saved.

System defaults
===============

.. image:: images/system-default-settings.png
  :width: 600
  :alt: Screenshot showing System defaults Settings Configuration in Mautic

* **Default item limit per page** - The number of Contacts, Campaigns, Emails, etc. which each page when you go to an item section. The default is ``10``.

* **Default timezone** - The Users’ default time zone, typically set to the time zone of the company headquarters. Time zones can be set for individual Users. The default is ``UTC``.

For example: Headquarters is in Boston and the default is set to US Eastern Time ``America New York``. A User in San Francisco ``US Pacific Time America Los Angeles`` can display Pacific Time in the User interface.

* **Default language** - The initial language assigned to Users. Individual Users may select their own settings. Mautic uses ``English - United States`` by default.

* **Cached data timeout (minutes)** - Mautic caches data to speed up page loads. Update this setting to change how long Mautic caches the data. Mautic uses ``10 minutes`` as the default.

* **Date Range Filter Default** - Sets the default for how far back from the current date Mautic looks for data in Reports (including Campaign and Email snapshots Reports on the item page), this sets the default for how far back from the current date Mautic looks for data. If you’ve changed the setting on a Report, Mautic uses what you’ve entered. Mautic’s default value is ``1 Month``.
 
* **Default format for full dates, date only, short dates, and time only** - The defaults sets standard US time format. The letters in the boxes are PHP code. See the `PHP manual for date functions <https://www.php.net/manual/en/function.date>`_ to change formats.


CORS settings
=============

Cross-Origin Resource Sharing (CORS) enables data to pass between your website and Mautic.

.. image:: images/cors-settings.png
  :width: 600
  :alt: Screenshot showing CORS Settings Configuration in Mautic

* **Restrict Domains** - When set to No, any web page can pass information to Mautic. Select Yes to limit communication with your Mautic instance to websites listed in Valid Domains.

* **Valid Domains** - A list of domains allowed to communicate with your Mautic instance. In the text box, list the exact URL of the top level domain you want to enable, one per line. For example: ``https://www.mautic.com`` tracks any activity on Mautic.com pages, but ``https://www.mautic.com`` won’t because acquia.com is a secure website.

.. note:: 

  In the Valid Domains field, don’t include a slash at the end. For example, use ``https://www.mautic.com`` instead of ``https://www.mautic.com/``.

Miscellaneous settings
======================

Update settings
===============

Theme settings
**************

API settings
************

Asset settings
**************

Campaign settings
*****************

Email settings
**************

Mail send settings
==================

Default frequency rule
======================

Monitored inbox settings
========================

Message settings
================

Unsubscribe settings
====================

Form settings
*************

Contact settings
****************

Contact merge settings
======================

Contact list settings
=====================

Import settings
===============

Segment settings
****************

Company settings
****************

Notification settings
*********************

Campaign notification settings
==============================

Webhook notification settings
=============================

Landing page settings
*********************

Tracking settings
*****************

Mautic tracking settings
========================

Facebook pixel
==============

Google Analytics
================

Report settings
***************

Text message settings
*********************

User/Authentication settings
****************************

SAML/SSO settings
=================

Webhook settings
****************

Social settings
***************