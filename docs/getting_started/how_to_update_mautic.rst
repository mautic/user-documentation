.. vale off

How to update Mautic
####################

.. vale on

There are two ways to update Mautic:

1. Using the Command Line - recommended
2. Through the User interface

If your instance is in production, has a large number of Contacts and/or is  on shared hosting, it's **strongly** recommended that you update at the command line.

.. warning::
    Updating in the User interface requires a significant amount of resources, and can be error-prone if the server restricts resource allocation. This can lead to failed updates and corrupted data. This feature will be completely removed in Mautic 5.0 and you will have to update at the command line.

Updating at the command line (non-Composer based installations)
***************************************************************
Before you commence updating Mautic, **please ensure that you have a tested backup of your Mautic instance**. 

This means that you have downloaded the files and database of your Mautic instance, and you have re-created it in a test environment somewhere and tested that everything is working as expected. This is your only recourse if there are any problems with the update. Never update without having a working, up-to-date backup.

Checking for updates at the command line
========================================

Mautic can only be updated using Composer via the command line from version 5.0. 

The update feature within the Mautic User interface (UI) has been deprecated from Mautic 4.2, but you will be alerted within the UI (see below figure) when a new version of the Mautic is available. 

.. image:: images/gui-update-deprecated.png
  :width: 400
  :alt: Screenshot showing deprecated update feature warning

.. warning::
    Before starting to upgrade, it is highly recommended to take a backup of your instance. If updates are available, you will receive an update notification followed by step-by-step instructions in the CLI to complete the process.

Log in via the command line, and change directory to the Mautic directory using the command

``cd /your/mautic/directory``

The first step is to find out if there are any updates available using the following command:

``php bin/console mautic:update:find``

The output from this command tells you if there are any updates to apply. The notification links to an announcement post which explains what the release includes, and the recommended environment requirements if they are not being met (for example, a higher version of PHP must be installed or plugins that must be updated).

.. note::
    It's a good idea to review the announcement link for information about the release. There may be important information or steps that you may need to take before updating.

1. After a system readiness check, you can apply the updates.

Installing updates at the command line
======================================

If there are updates available, run the following command to apply them:

``php bin/console mautic:update:apply``

Once this is completed, you may be asked to run the command again with the additional argument:

``php bin/console mautic:update:apply --finish``


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

- The live :xref:`Mautic Community Slack` is also available, but all support requests have to be posted on the forums. POST there first, then drop a link in Slack if you plan to discuss it there.

In all cases, it is important to provide details about the issue, as well as the steps you have taken to resolve it. At a minimum, include the following:

- Steps to reproduce your problem - a step-by-step walk-through of what you have done so far
- Your server's PHP version.
- The version of Mautic you are on, and the version you are aiming to update to
- The error messages you are seeing - if you don't see the error message directly, search for it in the var/logs folder within your Mautic directory and in the server logs. Server logs are in different places depending on your setup. Ubuntu servers generally have logs in ``/var/log/apache2/error.log``. Sometimes your hosting provider might offer a graphical interface to view logs in your Control Panel.

If you don't provide the information requested as a minimum, the person who might try to help you has to ask you for it, so please save them the trouble and provide the information upfront. Also, importantly, please be polite. Mautic is an open source project, and people are giving their free time to help you.

If you are sure that you have discovered a bug and you want to report it to developers, you can :xref:`Mautic Github New Issue` on GitHub. GitHub is not the right place to request support or ask for help with configuration errors. Always post on the forums first if you aren't sure, if a bug report is appropriate this can link to the forum thread.