Emails
######

Mautic enables marketers to automatically send Emails directly to a group of Contacts in a Segment by using a Campaign, or send Emails on a one-time basis. Emails provide a means for direct interaction with potential customers, clients, and Contacts.

Email types
***********

.. image:: images/emails/types.png
  :width: 400
  :alt: Screenshot showing the types of Emails that are available in Mautic

There are two types of Emails: template and Segment - broadcast - Emails.

.. vale off

Template Emails
===============

.. vale on

Template Emails are transactional by default. They're used in Campaigns, Form submit actions, Point triggers, etc. It's possible to send template Emails to the same Contact multiple times. You can't send template Emails to a Contact outside of another Mautic Component except when sending an Email directly to a Contact - in this case Mautic clones the content.

.. note::
    For this reason, template Emails sent directly to a Contact aren't associated with the template Email itself and thus stats aren't tracked against it.

.. vale off

Segment (Broadcast) Emails
==========================

.. vale on

Segment Emails are marketing Emails by default. On creation the marketer assigns Segments to the Email. This determines which Contacts receive the communication. Note that each Contact can only receive the Email once - it's like a mailing list.

.. image:: images/emails/email-segments.jpg
  :width: 400
  :alt: Screenshot showing selecting Email Segments in Mautic

This entry field is a multi-select which allows you to choose several Segments if necessary.

Mautic initiates the sending of these Emails with a :doc:`/configuration/cron_jobs` - see section on Send Scheduled Broadcasts - for example, Segment Emails - for more details on this.

Email formats
*************

In Mautic, it's possible to create Emails in both full HTML as well as basic text format - delivered as necessary to Contacts based on what their client supports. This is an important part of creating a strong relationship with Contacts by providing relevant information in the correct format.

.. vale off

Managing Emails
***************

.. vale on

Email overview
==============

The Email overview allows at-a-glance information regarding the success or failure of a particular Email. You can quickly see relevant information in regards to opens, bounces, successful click-throughs and other important statistics.

Translations
============

When creating the Email, there is an option to assign a language and a translation parent. By selecting a translation parent, the current item is then considered to be a translation in the selected language of that parent item. If a Contact has a preferred language set, they receive the translated version in their preferred language if it exists. Otherwise, they receive the parent in the default language.

It's also possible to have translations of A/B test variants.

Base64 encoded images
=====================

It's possible to encode all images in the Email text as base64. It attaches the image inside the Email body. It has several implications:

.. image:: images/emails/base64-images.jpg
  :width: 400
  :alt: Screenshot showing Base64 settings for images in Emails

- The main idea with this option is that most of the Email clients display the images directly, without the need to allow images.
- Some Email clients like GMail require the approval to display Base64 encoded images due to the tracking pixel being an image, and won't display the Base64 encoded images as a result. See the next paragraph for possible solution.
- The Email body increases significantly if the Email contains many and/or large sized images. Some Email clients like GMail "clip" such messages and won't display it directly.

Tokens
======

Mautic allows the use of tokens in Emails which gives the marketer the possibility to integrate a number of Contact fields in your Emails. These can be easily placed within your Emails and are automatically replaced with the appropriate text once sent.

Check the :doc:`/configuration/variables` documentation for a list of all the available default fields.

Default value
~~~~~~~~~~~~~

A token can have a default value for cases when the Contact doesn't have the value known. You must specify the default value after a ``|`` character, for example:

.. code-block:: php

    Hello {contactfield=firstname|friend}

The ``|friend`` tells Mautic to use 'friend' if there is no first name present in the Contact field.

Encoded value
~~~~~~~~~~~~~

It's possible to encode values used in a token using the following syntax:

.. code-block:: php

    Hello {contactfield=firstname|true}

The ``|true`` tells Mautic to encode the value used, for example in URLs.

Date formats
~~~~~~~~~~~~

To use custom date fields in tokens, use the following format:

.. code-block:: php

    {contactfield=DATEFIELDALIAS|datetime}
    {contactfield=DATEFIELDALIAS|date}
    {contactfield=DATEFIELDALIAS|time}

The date outputs in a human-readable format, configured in the settings in your Global Configuration > System Settings under 'Default format for date only' and 'Default time only format'.

Contact replies
===============

To make use of monitoring replies from Contacts, you must have access to an IMAP server **other than Google or Yahoo** as they overwrite the return path, which prevents this feature from working.

.. note::
  To use the Monitored Email feature you must have the PHP IMAP extension enabled - most hosts already have this turned on.

#. Configure all Mautic sender/reply Email addresses to send a copy to one single inbox - most Email providers support this feature in their configuration panel.

.. note::
  It's best to create an Email address specifically for this purpose, as Mautic reads each message it finds in the given folder.

#. Go to the Mautic configuration and set up the inbox to monitor replies.

.. image:: images/emails/contact-replies-imap-folder.png
  :width: 400
  :alt: Screenshot showing IMAP mailbox setting for reply monitoring

#. To fetch and process the replies, run the following cron command:

``php path/to/mautic/bin/console mautic:email:fetch``

Usage
~~~~~
Contact replies within Campaigns function as decision after an Email Send action, to take further action based on whether the Contact has replied to the Email. Mautic tries to read the inbox, parse messages, and find replies from the specified Contact. The Contact, when matched with an incoming reply, proceeds down the positive path immediately after the reply detection.


.. image:: images/emails/contact-replies-campaign-decision.png
  :width: 400
  :alt: Screenshot showing Contact replies Campaign action

.. vale off

Mailer as Owner
***************

.. vale on

This feature allows Mautic to automatically personalize Emails sent to a Contact who has an owner (Mautic User) assigned to them. This feature changes the from Email, from name and signature by changing the default setting to the Mautic Contact owner's User setting.

.. vale off

Sending from the Contact owner
==============================

.. vale on

#. Open the Admin menu by clicking the cog icon in the top right corner.
#. Select the Configuration menu item.
#. Select the Email Settings tab.
#. Switch the Mailer is owner to Yes.
#. Save the configuration.

Overriding the mailer as owner setting
======================================
It's possible to override the global setting on a per-Email basis.

There is a switch under the advanced settings of the Email, which allows you to decide whether to take the global mailer as owner setting, or the specified from address, into account.

.. image:: images/emails/mailer-as-owner-switch.png
  :width: 400
  :alt: Screenshot showing mailer as owner switch

If set to Yes, the global setting takes precedence.

If set to No, Mautic uses the address and name supplied in the Email 'From' fields.

Signatures
**********

Setting a signature happens in two places:

#. The default signature is in the Configuration > Email Settings tab. The default text is 

.. code-block:: html

  Best regards,<br/>|FROM_NAME|.

Mautic replaces the ``|FROM_NAME|`` token with the name which is also defined in the Email Settings tab.

Mautic uses this signature by default if the Contact doesn't have an owner assigned.

#. Every Mautic User can configure their own signature in their account settings. Mautic uses this signature by default if the Contact has an owner assigned to them.

.. note::
  There are some exceptions where the Contact owner's signature isn't used, which is when a User sends an Email directly from a Contact's profile. In this case, Mautic uses the currently logged in User's signature, with the from name and Email specified in the Email send Form, and not the Contact owner. The values used are pre-filled with those of the currently logged in Mautic User.
  
  It doesn't matter if the Contact has another owner assigned or if it doesn't have an owner at all.

  Also, when sending a test Email this is also the case.


.. vale off

Using the Email signature
=========================

.. vale on

Marketers can place the signature into an Email using the ``{signature}`` token.

Email delivery
##############

Mautic delivers Emails using the method defined by the system administrator. If you are the system administrator for your Company, then you need to add the Email protocol for your Mautic instance to use. Mautic integrates with any Email service provider which offers SMTP mail servers as well as several distinct services such as:

- :xref:`Mandrill`
- :xref:`GMail`
- :xref:`Sendgrid`
- :xref:`Mailjet`
- :xref:`Postmark`
- :xref:`Sendmail`
- :xref:`Amazon SES`.

The system can either send Emails immediately or queue them for processing in batches by a :doc:`cron job </configuration/cron_jobs>`.

Immediate delivery
******************

This is the default means of delivery. As soon as an action in Mautic triggers an Email to send, it's sent immediately. If you expect to send a large number of Emails, you should use the queue. Sending Email immediately may slow the response time of Mautic if using a remote mail service, since Mautic has to establish a connection with that service before sending the mail. Also attempting to send large batches of Emails at once may hit your server's resource limits or Email sending limits if on a shared host.

Queued delivery
***************

Mautic works most effectively with high send volumes if you use the queued delivery method. Mautic stores the Email in the configured spool directory until the execution of the command to process the queue. Set up a :doc:`cron job </configuration/cron_jobs>` at the desired interval to run the command:

.. code-block:: shell
    
    php /path/to/mautic/bin/console mautic:email:process

Some hosts may have limits on the number of Emails sent during a specified time frame and/or limit the execution time of a script. If that's the case for you, or if you just want to moderate batch processing, you can configure batch numbers and time limits in Mautic's Configuration. See the :doc:`cron job documentation </configuration/cron_jobs>` for more specifics.

.. vale off

Tracking Opened Emails
**********************

.. vale on

Mautic automatically tags each Email with a tracking pixel image. This allows Mautic to track when a Contact opens the Email and execute actions accordingly. Note that there are limitations to this technology - the Contact's Email client supporting HTML and auto-loading of images, and not blocking the loading of pixels. If the Email client doesn't load the image, there's no way for Mautic to know the opened status of the Email.

By default, Mautic adds the tracking pixel image at the end of the message, just before the ``</body>`` tag. If needed, one could use the ``{tracking_pixel}`` variable within the body content token to have it placed elsewhere. Beware that you shouldn't insert this directly after the opening ``<body>`` because this prevents correct display of pre-header text on some Email clients.

It's possible to turn off the tracking pixel entirely if you don't need to use it, in the Global Settings.

.. vale off

Tracking links in Emails
========================

.. vale on

Mautic tracks clicks of each link in an Email, with the stats displayed at the bottom of each Email detail view under the Click Counts tab.

Unsubscribing
*************

Mautic has a built in means of allowing a Contact to unsubscribe from Email communication. You can insert the tokens ``{unsubscribe_text}`` or ``{unsubscribe_url}`` into your Email to have the text or the URL show at your desired location. The unsubscribe text token inserts a sentence with a link instructing the Contact to click to unsubscribe. 

The unsubscribe URL token inserts the URL into your custom written instructions. 

For example:

.. code-block:: html

        <a href="{unsubscribe_url}" target="_blank">Want to unsubscribe?</a>

You can find the configuration of the unsubscribe text in the global settings.

Online version
**************

Mautic also enables the hosting of an online version of the Email sent. To use that feature, simply add the following as URL on text to generate the online version link ``{webview_url}``.

For example:

.. code-block:: html

    <a href="{webview_url}" target="_blank">View in your browser</a>

Bounce management
#################

Mautic provides a feature which allows monitoring of IMAP accounts to detect bounced Emails and unsubscribe requests.

Note that Mautic makes use of "append" Email addresses. The return-path or the list-unsubscribe header uses something like ``youraddress+bounce_abc123@example.com``. The bounce or unsubscribe allows Mautic to determine what type of Email it's when it examines the inbox through IMAP. The ``abc123`` gives Mautic information about the Email itself, for example which Contact it was it sent to, what Mautic Email address it originated from, etc.

Some Email services overwrite the return-path header with that of the account's Email (GMail, Amazon SES). In these cases, IMAP bounce monitoring won't work.

Elastic Email, SparkPost, Mandrill, Mailjet, SendGrid and Amazon SES support Webhook callbacks for bounce management. See below for more details.

.. vale off

Monitored Inbox Settings
************************

.. vale on

To use the Monitored Email feature you must have the PHP IMAP extension enabled (most shared hosts already have this turned on).  Go to the Mautic configuration and fill in the account details for the inbox(es) you wish to monitor.

.. image:: images/bounce_management/asset-monitored-inbox-settings.png
  :width: 400
  :alt: Screenshot showing IMAP mailbox setting for reply monitoring

It's possible to use a single inbox, or to configure a unique inbox per monitor.

To fetch and process the messages, run the following command:

.. code-block:: shell
  
  php /path/to/mautic/bin/console mautic:email:fetch

Note that it's best to create an Email address specifically for this purpose, as Mautic reads each message it finds in the given folder.

If sending mail through GMail, the Return Path of the Email is automatically rewritten as the GMail address. It's best to use a sending method other than GMail, although Mautic can monitor a GMail account for bounces.

If you select an Unsubscribe folder, Mautic also appends the Email as part of the "List-Unsubscribe" header. It then parses messages it finds in that folder and automatically unsubscribe the Contact.

Webhook bounce management
*************************

.. vale off

Elastic Email Webhook
=====================

.. vale on

1. Login to your Elastic Email account and go to Settings -> Notification.

2. Fill in the Notification URL as ``https://mautic.example.com/mailer/elasticemail/callback``

3. Check these actions: unsubscribed, complaints, bounce/error

.. image:: images/bounce_management/elasticemail_webhook_1.png
  :width: 400
  :alt: Screenshot showing Elastic Email Webhook settings

Useful resources
~~~~~~~~~~~~~~~~

- :xref:`Elastic Support` - Elastic Email's Help desk
- :xref:`Getting Started with Elastic` - Getting Started resources from Elastic Email

.. vale off

Amazon SES Webhook
==================

.. vale on

Mautic supports the bounce and complaint management from Amazon Simple Email Service (Amazon SES).

1. Go to the Amazon Simple Notification Service - SNS - and create a new topic:

.. image:: images/bounce_management/amazon_webhook_1.png
  :width: 400
  :alt: Screenshot showing Amazon SNS create new topic

.. image:: images/bounce_management/amazon_webhook_2.png
  :width: 400
  :alt: Screenshot showing naming your SNS topic

2. Click on the newly created topic to create a subscriber

.. image:: images/bounce_management/amazon_webhook_3.png
  :width: 400
  :alt: Screenshot showing go to the topic

.. image:: images/bounce_management/amazon_webhook_4.png
  :width: 400
  :alt: Screenshot showing new subscriber

3. Enter the URL to the Amazon Webhook on your Mautic installation.

.. note::
  When using the **SMTP method**, the callback URL is your Mautic URL followed by ``/mailer/amazon/callback``.

  When using the **API method** (available since Mautic 3.2), the callback URL is your Mautic URL followed by ``/mailer/amazon_api/callback``.

  .. image:: images/bounce_management/amazon_webhook_5.png
    :width: 400
    :alt: Enter URL in Mautic

1. The subscriber is in the pending state until it's confirmed. SES calls your Amazon Webhook with a ``SubscriptionConfirmation`` request including a callback URL. To confirm, Mautic sends a request back to this callback URL to validate the subscription. Therefore make sure your Mautic installation can connect to the internet, otherwise the subscription remains in the pending state and won't work. If your Webhook is https, you also need to make sure that your site is using a valid SSL certificate which is verifiable by Amazon.

Check the log file for more information. If you are having problems getting the subscription out of the pending state, it may also help to configure the topic's 'Delivery status logging' settings, so that delivery status (at least for http/s) gets logged to CloudWatch. Then you can visit the Logs section of the CloudWatch Management Console and see the exact details of delivery failures. For example, an invalid SSL certificate might result in an event like the following appearing in the CloudWatch logs:

.. code-block:: javascript

  {
      "notification": {
          "messageId": "337517be-f32c-4137-bc8d-93dc29f45ff9",
          "topicArn": "arn:aws:sns:eu-west-1:012345678901:Mautic",
          "timestamp": "2019-05-31 15:34:13.687"
      },
      "delivery": {
          "deliveryId": "a5dab35d-83f9-53c3-8ca6-e636c82668d4",
          "destination": "https://mautic.example.com/mailer/amazon/callback",
          "providerResponse": "SSLPeerUnverifiedException in HttpClient",
          "dwellTimeMs": 42266,
          "attempts": 3
      },
      "status": "FAILURE"
  }

  .. image:: images/bounce_management/amazon_webhook_6.png
  :width: 400
  :alt: Screenshot showing confirmation pending

  5. The last step is to configure Amazon SES to deliver bounce and complaint messages using our SNS topic.

  .. image:: images/bounce_management/amazon_webhook_7.png
  :width: 400
  :alt: Screenshot showing the configuring of SES

  .. image:: images/bounce_management/amazon_webhook_8.png
  :width: 400
  :alt: Screenshot showing the selection of the SNS topic

.. vale off

Mandrill Webhook
================

.. vale on

Mautic supports a few of Mandrill's Webhooks for bounces.

1. Login to your Mandrill account and go to Settings -> Webhooks

  .. image:: images/bounce_management/mandrill_webhook_1.png
    :width: 400
    :alt: Screenshot showing Mandrill Webhooks

2. Click Add a Webhook

 .. image:: images/bounce_management/mandrill_webhook_2.png
  :width: 400
  :alt: Screenshot showing addition of Mandrill Webhooks

.. vale off

Mautic supports the following Webhooks: message is bounced, message is soft-bounced, message is rejected, message is marked as spam and message recipient unsubscribes.

.. vale on

1. Fill in the ``Post To URL`` as ``https://mautic.example.com/mailer/mandrill/callback`` then click Create Webhook.

2. Click Custom Metadata and create two new metadata fields: ``hashId`` and ``contactId``

 .. image:: images/bounce_management/mandrill_webhook_5.png
  :width: 400
  :alt: Screenshot showing addition of metadata

 .. image:: images/bounce_management/mandrill_webhook_4.png
  :width: 400
  :alt: Screenshot showing addition of metadata

.. vale off

Mailjet Webhook
===============

.. vale on

Mautic supports Mailjet's Webhooks for bounces, spam and blocked. Before any configuration, you'll need to create an account on :xref:`Mailjet`.

1. Login to your Mailjet account and go to Account > Event tracking/triggers

 .. image:: images/bounce_management/mailjet_webhook_1.png
  :width: 400
  :alt: Screenshot showing Mailjet Webhooks

2. On the event type list, select the one you want to link to your Mautic account

 .. image:: images/bounce_management/mailjet_webhook_2.png
  :width: 400
  :alt: Screenshot showing adding Webhooks

.. vale off

Mautic supports the following webhooks: message is bounced, message is blocked, message is spam.

.. vale on

3. Fill in the URL boxes as ``https://mautic.example.com/mailer/mailjet/callback``.

.. vale off 

SparkPost Webhook
=================
1. Login to your SparkPost account and go to Account -> Webhooks.

 .. image:: images/bounce_management/sparkpost_webhook_1.png
  :width: 400
  :alt: Screenshot showing SparkPost webhooks

2. Click the New Webhook button top right

 .. image:: images/bounce_management/sparkpost_webhook_2.png
  :width: 400
  :alt: Screenshot showing new Webhooks

3. Fill in the Target URL as ``https://mautic.example.com/mailer/sparkpost/callback``

4. Select the following Events

 .. image:: images/bounce_management/sparkpost_webhook_2.png
  :width: 400
  :alt: Screenshot showing events

SendGrid Webhook
================

.. vale on

1. Login to your SendGrid account and go to Settings > Mail Setting > Mail Settings

 .. image:: images/bounce_management/sendgrid_webhook_1.png
  :width: 400
  :alt: Screenshot showing SendGrid Webhooks

.. vale off

2. Fill in the Target URL as `https://mautic.example.com/mailer/sendgrid_api/callback`
  
.. vale on

3. Select the following Events

 .. image:: images/bounce_management/sendgrid_webhook_2.png
  :width: 400
  :alt: Screenshot showing Events

4. Save setting - on the right side of "Event Notification" row:

 .. image:: images/bounce_management/sendgrid_webhook_3.png
  :width: 400
  :alt: Screenshot showing save settings

.. vale off

Create a Segment with bounced Emails
************************************

.. vale on

This isn't required, but if you want to be able to select the Contacts with bounced Emails easily - for example to delete all bounced Contacts - create a Segment with bounced Emails.

1. Go to Segments > New.
2. Type in the Segment name. For example Bounced Emails.
3. Select the Filters tab.
4. Create new Bounced Email equals Yes filter.
5. Wait for the ``bin/console mautic:segments:update`` command to be automatically triggered by a cron job or execute it manually.
6. All Contacts with bounced Emails should appear in this Segment.

.. vale off

Troubleshooting Emails
**********************

.. vale on

Email open tracking
===================

Mautic tracks Email opens using a tracking pixel. This is a 1 pixel GIF image in the source code of Email messages sent by Mautic.

When a Contact opens an Email using an Email client like Outlook, Thunderbird, or GMail, the client tries to load the images in it. The image load request is what Mautic uses to track the Email open action.

Some Email clients have auto loading images turned off, and Contacts have to selectively "Load Images" inside an Email message. Some automatically open all images before delivering the Email to the Contact.

If the images aren't loaded for this reason or another, or if they're opened automatically before sending the Email on to the Contact, Mautic doesn't know about the open action. Therefore, Email open tracking isn't very accurate.

Email link tracking
===================

Before sending an Email, Mautic replaces all links in the Email with links back to Mautic including a unique key. If the Contact clicks on such a link, the link redirects the Contact to Mautic, which then tracks the click action and redirects the Contact to the original location. It's fast, so the Contact doesn't usually notice the additional redirect.

If the Email click doesn't get tracked, make sure that:

1. Your Mautic server is on an accessible URL. 
2. You sent it to an existing Contact via a Campaign or a Segment Email. Emails sent by the Send Example link, direct Email from the Contact profile, or Form submission preview Emails won't replace links with trackable links.
3. Make sure the URL in the href attribute is absolute and valid. It should start with ``http://`` or ideally ``https://``.
4. You've opened the link in a incognito browser (not in the same session where you're logged into Mautic)
5. Check if Mautic replaced the link in the Email with a tracking link.

Unsubscribe link doesn't work
=============================
The unsubscribe link **doesn't work in test Emails**.

This is because Mautic sends test Emails to a Mautic User and not to a Mautic Contact.

Mautic Users can't unsubscribe and therefore the unsubscribe link looks like this: ``https://mautic.example.com/|URL|``. However, the link **does** work correctly when you send the Email to a Contact.

Best practice is to create a Segment with a small number of Contacts to receive test Emails - for example, yourself - which ensures that you can fully test features such as unsubscribe behaviour.

