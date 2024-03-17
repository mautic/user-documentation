.. vale off

How to update Mautic
####################

.. vale on

There are two ways to update Mautic:

1. Using the Command Line - recommended
2. Through the User interface

If your instance is in production, has a large number of Contacts and/or is  on shared hosting, it's **strongly** recommended that you update at the command line.

.. warning::
    Updating in the User interface requires a significant amount of resources, and can be error-prone if the server restricts resource allocation. A failed update or corrupted data can result from this. It's planned to remove this feature in Mautic 5.0, requiring updating at the command line.

Updating at the command line (non-Composer based installations)
***************************************************************

Before you commence updating Mautic, **please ensure that you have a tested backup of your Mautic instance**. 

This means that you have downloaded the files and database of your Mautic instance, and you have re-created it in a test environment somewhere and tested that everything is working as expected. This is your only recourse if there are any problems with the update. Never update without having a working, up-to-date backup.

Checking for updates at the command line
========================================

Mautic can only be updated using Composer via the command line from version 5.0. 

The update feature within the Mautic User interface (UI) has been deprecated from Mautic 4.2, but you will be alerted within the UI (see below figure) when a new version of the Mautic is available. 

.. image:: images/gui-update-deprecated.png
  :width: 700
  :height: 200
  :alt: Screenshot showing deprecated update feature warning

.. warning::
    Before starting to upgrade, it's highly recommended to take a backup of your instance. If updates are available, you will receive an update notification followed by step-by-step instructions in the command-line interface to complete the process.

Log in via the command line, and change directory to the Mautic directory using the command:

.. code-block:: shell

    cd /your/mautic/directory

    

The first step is to find out if there are any updates available using the following command:

.. code-block:: shell

   php bin/console mautic:update:find

The output from this command tells you if there are any updates to apply. The notification links to an announcement post which explains what the release includes, and the recommended environment requirements if they are not being met (for example, a higher version of PHP must be installed or plugins that must be updated).

.. note::
    It's a good idea to review the announcement link for information about the release. There may be important information or steps that you may need to take before updating.

After a system readiness check, you can apply the updates.

Installing updates at the command line
======================================

If there are updates available, run the following command to apply them:

.. code-block:: shell

   php bin/console mautic:update:apply


This is followed by a prompt to run the command again with this additional argument:

.. code-block:: shell

   php bin/console mautic:update:apply --finish


To Update Mautic from 2.x to 3.x
*********************************
If you are on mautic 2.x + then it is better for you to upgrade to 3.x and higher version in this section let's deep dive into upgrading mautic from 2.x to 3.x version.

Let's Get Started !

.. note::

    if you are not already operating with elevated privileges or have not set up the necessary permissions in your system configuration, you may be able to run these commands with sudo.

1. Step One : Fix the data migrations, in your current mautic repo path execute the below commands inside (cd /path/to/your/mautic) :

.. code-block:: shell

    php app/console doctrine:migration:migrate

    php app/console doctrine:schema:update --force

    sudo -u www-data php app/console cache:clear

The cache clear may take some to get executed.

After the Migration is done we can go ahead and update the Database !

2. Upgrade to 2.16.5 (If you haven't yet) :

.. code-block:: shell

    cd /path/to/your/mautic
    
    sudo -u www-data php app/console mautic:update:find

    sudo -u www-data php app/console mautic:update:apply


3. Upgrade the to php 7.3 version :

.. code-block:: shell

    apt upgrade -y

    apt install software-properties-common -y

    add-apt-repository ppa:ondrej/php

    apt update -y

    apt install php7.3

    apt install php7.3-common php7.3-mysql php7.3-xml php7.3-xmlrpc php7.3-curl php7.3-gd php7.3-imagick php7.3-cli php7.3-dev php7.3-imap php7.3-mbstring php7.3-opcache php7.3-soap php7.3-zip php7.3-intl -y

4. Edit Your php ini file :

.. code-block:: shell

    sudo nano /etc/php/7.3/apache2/php.ini

find the following attributes and change the values of the below variables as shown below.

short_open_tag = On
memory_limit = 256M
upload_max_filesize = 100M
max_execution_time = 300
post_max_size = 64M

5. Activate your php 7.3 Version and turn off 7.1 version :

.. code-block:: shell

    a2enmod php7.3

    a2dismod php7.1

    systemctl restart apache2

    php -v


6. Update the Database

- Backup your Database :

.. code-block:: shell

    mysqldump -u root -p --all-databases > all-db.sql

    psw: "ENTER_YOUR_PASSWORD"

- Remove the old mariaDB db :

.. code-block:: shell

    apt remove mariadb-server

- Adding a New apt source :

.. code-block:: shell

    apt install software-properties-common -y

    apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8

    nano /etc/apt/sources.list.d/mariadb.list

- Add :

.. code-block:: shell

    deb [arch=amd64,arm64,ppc64el] 
    http://nyc2.mirrors.digitalocean.com/mariadb/repo/10.4/ubuntu bionic main
    deb-src http://nyc2.mirrors.digitalocean.com/mariadb/repo/10.4/ubuntu bionic main


- Update and Install the New Version of mariaDB :

.. code-block:: shell

    apt update

    apt install mariadb-server -y

    exit



7. Installing Mautic 3 

To start can execute the below commands :

.. code-block:: shell

    sudo -u www-data php upgrade_v3.php

If you installed via composer originally, you will need to use this trick :

.. code-block:: shell

    mv composer.json composer.json2
    sudo -u www-data php upgrade_v3.php 

- If you get an error here just check if the ownership permissions are set properly

then run the upgrage again :

.. code-block:: shell

    sudo -u www-data php upgrade_v3.php

8. Looking for new versions in 3.0 and then updating it 3.0+ (inside your mautic folder) :

.. code-block:: shell

    sudo -u www-data php bin/console mautic:update:find
    sudo -u www-data php bin/console mautic:update:apply
    sudo -u www-data php bin/console mautic:update:apply --finish

- set ownership and clear the cache :

.. code-block:: shell

    chown -R www-data:www-data /path/to/your/mautic/
    chmod -R 755 /path/to/your/mautic/
    sudo -u www-data php bin/console cache:clear


9. Last Step:

Change your cron jobs from :

.. code-block:: shell

    /app/console

to :

.. code-block:: shell

    /bin/console

- If you would like to use the new Email Builder, go to plugins, click on install plugins and turn on the new builder.
  You might need to log in and out before it's actvated.

There you go finally upgraded to mautic 3.0 !!!

If you are already on 3.x+ version and want to upgrade it to 4.x we got you covered check the below documentation.

To Update Mautic from 3.x to 4.x
*********************************
- Mautic 4 is the most stable release,It is already being used by many customers.When it was upgraded from Mautic 2 to Mautic 3,It had several issues with the database structure and even the file system.Here is a simple guide to go ahead !.

You need to be at the root folder which is the /var/www/html/ currently where the mautic code resides.

1. First step is to backup the file system , as said you need to be at /var/www/html/ for upgrading and for executing the commands given below:
the below command is used to backup your file system :

.. code-block:: shell

    zip -r output_file.zip folder1

2. Backup your Database

.. code-block:: shell

    mysqldump -u [user_name] -p [password] [mautic database_name] > [dumpfilename.sql]

you can then check if your files are created By running the below command :

.. code-block:: shell

    ls -la

you should see the .sql and .zip files generated by running the above command.

3. Updating your current Environment
- Updating your php version from php7.3 to php7.4 and updating rest packages :

.. code-block:: shell

    apt install mariadb-server apache2 libapache2-mod-php7.4 php7.4 unzip php7.4-xml php7.4-mysql php7.4-imap php7.4-zip php7.4-intl php7.4-curl php7.4-gd php7.4-mbstring php7.4-bcmath ntp -y

- Now lets change the Environment Variables :

.. code-block:: shell

    nano /etc/php/7.4/apache2/php.ini

after running this command one should change the following variables values accordingly :

.. code-block:: shell

    file_uploads = On
    allow_url_fopen = On
    short_open_tag = On
    memory_limit = 256M
    upload_max_filesize = 100M
    max_execution_time = 300
    post_max_size = 64M

.. note:: 

    Regarding memory limit, you can be more generous and lift to 512M as well. Upload max filessize is also up to you. I suggest a minimum of 20MB.

4. Now move to php4 officially, and restart our Apache :

.. code-block:: shell

    a2enmod php7.4
    a2dismod php7.3
    systemctl restart apache2

and then check the current version of the php which is been used :

.. code-block:: shell
    
    php -v

.. note:: 
    If you get something like this :
    .. code-block:: shell

        PHP 7.4.23 (cli) (built: Aug 26 2021 15:51:37) ( NTS )
        Copyright (c) The PHP Group
        Zend Engine v3.4.0, Copyright (c) Zend Technologies
            with Zend OPcache v7.4.23, Copyright (c), by Zend Technologies

then we need to stop the cron jobs running in the background

.. code-block:: shell

    sudo crontab -e

one fix is that you can add a # in front of the cron commands, like:

.. code-block:: shell

    # * * * * * CRONJOBS HERE

5. Command Line Update !
- In order to create more tension we will do this in 2 steps. First we update to 3.3.4 and then to 4.0.1.

Let's look for a new version:

.. code-block:: shell

    cd /path/to/your/mautic/
    sudo -u www-data php bin/console mautic:update:find

after finding the latest version we need to apply it :

.. code-block:: shell

    sudo -u www-data php bin/console mautic:update:apply

.. note::
    Now we are prompted to apply finish. I would like to stop here for a moment. I know, that it is not the right way to use sudo when you are working here, but it is just simpler for folks if we don't go into permissions. But using a root user during updates can cause file creation with the wrong ownership. In order to avoid it we will make sure by almost every step that the files belong to the right user. So we hand over the files to the www-data user all the time (which is running our we server.)

- We do it by running this:

.. code-block:: shell

    chown -R www-data:www-data /path/to/your/mautic/
    chmod -R 755 /path/to/your/mautic/

- and now we can finish it by the following command :

.. code-block:: shell

    sudo -u www-data php /path/to/your/mautic/bin/console 
    mautic:update:apply --finish

- If everything went well, we are on the 3.3.4 version, half way to 4.0.1. Let's look for a new version, and apply changes:

.. code-block:: shell

    sudo -u www-data php /path/to/your/mautic/bin/console 
    mautic:update:find
    sudo -u www-data php /path/to/your/mautic/bin/console 
    mautic:update:apply

.. note:: 
    make sure that the file permissions is okay :

.. code-block:: shell

    chown -R www-data:www-data /path/to/your/mautic/

    chmod -R 755 /path/to/your/mautic/

And here comes the last step We are here ! Take a deep breath :

.. code-block:: shell

    sudo -u www-data php /path/to/your/mautic/bin/console 
    mautic:update:apply --finish

Congrats you are on Mautic 4.x version give yourself a pat on your back !

.. note:: 

    Need to make sure your templates are okay. Make sure, 
    that all of your email / landing page templates have the following config file 
    format especially the red line:

.. code-block:: shell

    {
        "name": "Template name",
        "author": "Mautic team",
        "authorUrl": "https://mautic.org",
        "builder": ["grapesjsbuilder"],
        "features": [
            "email"
        ]
    }
- If you are upgrading from a previous version, all your templates will have “builder”: “grapesjsbuilder”, 
 format, and you really need those brackets now.

Updating in the browser
***********************

When updating Mautic, there are several tasks which can take a long time to complete depending on the size of your Mautic instance.

.. warning::
    
    If you have a lot of contacts and/or use shared hosting, you might run into problems when updating with the notification 'bell' icon in Mautic. 

When updating within the browser, problems usually manifest as the update hanging part way through, or crashing with an error. They often arise as a result of resource limitation, particularly on shared hosting environments. 

For this reason, it's always recommended that you :ref:`update at the command line<installing updates at the command line>` wherever possible. From Mautic 5.0 the ability to update in the browser will be completely removed, and you will have to update at the command line.

Before you commence updating, **please ensure that you have a tested backup of your Mautic instance**.

This means that you have downloaded the files and database of your Mautic instance, and you have re-created it in a test environment somewhere and tested that everything is working as expected. This is your only recourse if there are any problems with the update. Never update without having a working, up-to-date backup.

Checking for updates in the browser
===================================

When Mautic makes a new release, a notification appears in your Mautic instance.

The notification links to an announcement post which explains what the release includes.

.. note::
    It's a good idea to read the announcement link for information about the release. There may be important information or steps that you may need to take before updating.

Once you have thoroughly read the release notes, and have tested your backup Mautic instance, you can click the notification to complete the update.

The update takes time to complete, and each step updates in the browser as it proceeds. Be patient and allow it to finish. On completion, a message confirms that the update has completed successfully.

The update wasn't successful
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If this has happened to you, head over to the Troubleshooting section for a step-by-step walk-through of how to complete the update. Maybe consider using the command line next time.

Stability levels
****************

By default, Mautic receives notifications both in the user interface and at the command line for stable releases only.

If you wish to help with testing early access releases in a development environment, do the following

- Edit your configuration and set the stability level to Alpha, Beta, or Release Candidate. This allows you to receive notifications for early access releases. 
- Always read the release notes before updating to an early access release.
- Never enable early access releases for production instances.

What to do if you need help updating Mautic
*******************************************

If you need help, you can ask for it in several places. You should remember that most members of the Community Forums, Slack, and GitHub are volunteers.

- The :xref:`Mautic Community Forums` is the place where you can ask questions about your configuration if you think it is the cause of the problem. Please search before posting your question, since someone may have already answered it.

- The live :xref:`Mautic Community Slack` is also available, but all support requests have to be posted on the forums. Create your request there first, then drop a link in Slack if you plan to discuss it there.

In all cases, it's important to provide details about the issue, as well as the steps you have taken to resolve it. At a minimum, include the following:

- Steps to reproduce your problem - a step-by-step walk-through of what you have done so far
- Your server's PHP version.
- The version of Mautic you are on, and the version you are aiming to update to
- The error messages you are seeing - if you don't see the error message directly, search for it in the var/logs folder within your Mautic directory and in the server logs. Server logs are in different places depending on your setup. Ubuntu servers generally have logs in ``/var/log/apache2/error.log``. Sometimes your hosting provider might offer a graphical interface to view logs in your Control Panel.

If you don't provide the information requested as a minimum, the person who might try to help you has to ask you for it, so please save them the trouble and provide the information upfront. Also, importantly, please be polite. Mautic is an open source project, and people are giving their free time to help you.

If you are sure that you have discovered a bug and you want to report it to developers, you can :xref:`Mautic Github New Issue` on GitHub. GitHub is not the right place to request support or ask for help with configuration errors. Always post on the forums first if you aren't sure, if a bug report is appropriate this can link to the forum thread.