Installing from Production Package
===================================

This is the route followed by the majority of Mautic users. Mautic provides a zipped installation package which you can download at `mautic.org/download`_.

.. _mautic.org/download: https://www.mautic.org/download

The download is the latest stable release - you can find more information about the available versions of Mautic here_.

.. _here: https://www.mautic.org/mautic-releases

Before proceeding with the installation it's important that you make sure your server environment meets the `minimum requirements`_ for the version you are installing.

.. _minimum requirements: https://www.mautic.org/download/requirements


It's also strongly recommended that you:

- Check that the directory is writable by the web server
  
- Check if there is enough free disk space to run the installation - don't forget to factor in the database size

- Ensure PHPs ``max_execution_time`` is at least 240 seconds

Mautic requires a MySQL/MariaDB database, so make sure that you have created one and have the credentials to hand for the user account with permissions to interact with the database. Remember to verify that the version of MySQL/MariaDB matches the `minimum requirements`_.

.. _minimum requirements: https://www.mautic.org/download/requirements


Uploading the production package
---------------------------------------

Once you have downloaded the zip file, you need to upload this to your web server and unzip it in the appropriate directory where you would like to host your Mautic instance.

Ensure that the web server has the correct permissions to access the files after you have unzipped them - read the documentation on working with file and folder permissions.

Using the web-based installer
-------------------------------------

Browse to the URL that corresponds to your Mautic instance, ensuring that you are accessing it over a secure connection, for example ``https://m.example.com``.

Pre-flight checks
-------------------------------------

The installer displays the first steps of the installation process, including any warnings in orange which you may wish to address.

