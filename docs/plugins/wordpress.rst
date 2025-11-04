WordPress
#########

Installation & activation
*************************

Requirements
============

- WordPress 4.6 or later
- PHP 5.6 or later

Steps
-----

1. Download the WP Mautic Plugin.
2. Go to your WordPress Admin Dashboard → Plugins → Add New.
3. Click 'Upload Plugin' and choose the downloaded ZIP file.
4. Click 'Install Now' and then 'Activate.'

Shortcodes and usage
********************

Available shortcodes
====================

WP Mautic currently provides a shortcode API through ``shortcodes.php``.

Example usage
-------------

.. code-block:: php

   [mautic type="form" id="1"]

Parameters
==========

- **type:** type of Mautic resource - for example ``form``.
- **id:** the ID of the Mautic Form or Asset you want to embed.

Tracking script behavior
************************

.. vale off

Header vs footer
================
You can choose to load the Mautic tracking script in the site header - for faster pageview tracking - or footer - for better performance.

.. vale on

Fallback tracking
=================

If a visitor has JavaScript turned off, a fallback ``<img>`` tag is automatically added for tracking via a tracking pixel.

Custom attributes
=================

.. vale off

The Plugin automatically sends additional metadata like language, page title, referrer, and user details if enabled.

.. vale on

Plugin settings
***************

Accessing the settings
======================

Navigate to **Settings → WPMautic** from your WordPress dashboard.

Available options
=================

.. vale off

- **Base URL:** the URL of your Mautic instance - for example ``https://example.mautic.com``.
- **Script Location:** choose whether to inject tracking code in the header, footer, or turn it off.
- **Track Logged In Users:** enable tracking details like email, username for logged-in users.
- **Fallback Activation:** adds a ``<noscript>`` image tracking fallback if you turn off JavaScript.

.. vale on

Developers
**********

This section covers everything you need to know about setting up your environment and integrating with WordPress.

Environment
===========

Before you begin developing, ensure you have **Docker** running on your system.

Getting started
---------------

First, clone the WordPress development repository:

.. code-block:: bash

  git clone https://github.com/WordPress/wordpress-develop.git

Change into the cloned directory:

.. code-block:: bash

  cd wordpress-develop

Initial setup
-------------

Run the following commands to set up your environment:

.. code-block:: bash

  npm install
  npm run build:dev
  npm run env:start
  npm run env:install

These commands:

.. vale off

- Install all Node.js dependencies.
- Build development versions of WordPress assets.
- Start the local Docker containers for WordPress.
- Install WordPress into the Docker environment.

.. vale on

Useful commands
---------------

After setup, you can use these commands to control your environment:

- ``npm run env:start`` to start Docker containers.
- ``npm run env:stop`` to stop Docker containers.
- ``npm run env:restart`` to restart Docker containers.

Hooks and functions
===================

Useful functions
----------------

- ``wpmautic_option( $option, $default )`` which retrieves the Plugin settings safely.
- ``wpmautic_base_script()``which retrieves the full URL of the ``mtc.js`` script.
- ``wpmautic_get_tracking_attributes()``which retrieves the custom tracking data array.

Filters
-------

Extend the Plugin using:

.. code-block:: php

  apply_filters('wpmautic_tracking_attributes', $attrs)

Actions
-------

- ``wp_head`` or ``wp_footer`` which automatically injects the Mautic script depending on settings.

