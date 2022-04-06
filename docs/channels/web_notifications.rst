Web notifications
#################

Web Notifications can be an extremely powerful tool for the marketer. Mautic integrated with :xref:`OneSignal` which allows you to push information to a Contact as they browse through web resources (Mautic Landing Pages, or with some configuration (see :xref:`OneSignal web push`), on your own website), giving you one more channel that you can use to build a relationship with them.

Web notifications in Mautic are provided by integrating with OneSignal. Using your own OneSignal account, you can now push a notification to your Contacts's browser (with their permission). Enable the OneSignal plugin in Mautic's Configuration to see Web Notifications listed under Channels in the menu.

For more information see the OneSignal :xref:`OneSignal web push quickstart` documentation.

Setup
*****

Configuration
=============

#. Create a OneSignal account and once logged in, create an App

#. Setup App Website Push Platforms in your OneSignal App

  .. image:: images/web_notifications/onesignal_add_app.png
    :width: 400
    :alt: Screenshot showing creating push platforms on OneSignal.

#. Select Typical Site and fill out the required fields.
#. Download the SDK files from the next screen, and upload them to the root of your Mautic installation - this shoud be accessible at `https://mautic.example.com/OneSignalSDKWorker.js`.
#. Get the keys from OneSignal under the Settings > Keys & IDs tab.
#. Enable the features you wish to use - for example, whether to enable notifications on mobile apps, Landing Pages, tracked pages, and whether to show a welcome notification after they subscribe.  You can also specifiy a subdomain name, and if you're using iOS and Android notifications you can also enable these options (see :doc:`channels/push_notifications`).

Sending notifications
=====================
There are two ways to send website notifications to the Contact:

1. Send with a Campaign Action 
2. Send via a :doc:`/channels/marketing_messages`