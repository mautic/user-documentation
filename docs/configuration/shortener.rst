.. vale off

Shortener service
#########

.. vale on

.. attention::

    Mautic 5 introduces a new shortener feature, replacing the old legacy shortener setup found in the configuration.

The new shortener service allows developers to create plugins for any shortener service, with any type of authorization. By default, Mautic does not provide a shortener service plugin; you must install it either from the marketplace or manually.


Example of setup Bitly plugin
=================

1. Install the Bitly bundle from the marketplace or using Composer:

.. code-block:: bash

    composer require webmecanik/mautic-bitly-bundle

2. Obtain an access key from https://app.bitly.com/settings/api and set up/enable the Bitly plugin.

3. Navigate to Configuration > System Settings > Shortener Service and designate Bitly as the default shortener service.

.. image:: images/shortener-bitly.png
   :width: 600
   :alt: Screenshot of Bitly enabled for SMS