Developers
##########

This section covers everything you need to know about setting up your environment and integrating with WordPress.

Environment
***********

Before you begin developing, ensure you have **Docker** running on your system.

Getting started
===============

First, clone the WordPress development repository:

.. code-block:: bash

  git clone https://github.com/WordPress/wordpress-develop.git

Change into the cloned directory:

.. code-block:: bash

  cd wordpress-develop

Initial setup
=============

Run the following commands to set up your environment:

.. code-block:: bash

  npm install
  npm run build:dev
  npm run env:start
  npm run env:install

These commands:

- Install all Node.js dependencies.
- Build development versions of WordPress assets.
- Start the local Docker containers for WordPress.
- Install WordPress into the Docker environment.

Useful commands
===============

After setup, you can use these commands to control your environment:

- ``npm run env:start`` to start Docker containers.
- ``npm run env:stop`` to stop Docker containers.
- ``npm run env:restart`` to restart Docker containers.


Hooks and functions
*******************

Useful functions
================

- ``wpmautic_option( $option, $default )`` — Retrieve plugin settings safely.
- ``wpmautic_base_script()`` — Get full URL of ``mtc.js`` script.
- ``wpmautic_get_tracking_attributes()`` — Get custom tracking data array.

Filters
=======

Extend the plugin using:

.. code-block:: php

  apply_filters('wpmautic_tracking_attributes', $attrs)

Actions
=======

- ``wp_head`` or ``wp_footer`` — Automatically injects Mautic script depending on settings.
