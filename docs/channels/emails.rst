Emails
######

Mautic enables marketers to use Emails within Campaigns, to be sent directly to a group of Contacts in a Segment, or to be sent on a one-time basis. Emails provide a means for direct interaction with potential customers, clients, and contacts.

Email Types
***********

.. image:: images/types.png
  :width: 400
  :alt: Screenshot showing the types of Emails that are available in Mautic

There are two types of Emails: template and Segment (broadcasts).

Template Emails
===============

Template Emails are transactional by default. They're used in Campaigns, Form submit actions, Point triggers, etc. It's possible to send template Emails to the same Contact multiple times. You can't send template Emails to a Contact outside of another Mautic Component except when sending an Email directly to a Contact - in this case Mautic clones the content.

.. note::
    For this reason, template Emails sent directly to a Contact aren't associated with the template Email itself and thus stats aren't tracked against it.

Segment (Broadcast) Emails
==========================

Segment Emails are marketing Emails by default. On creation the marketer assigns Segments to the Email. This determines which Contacts receive the communication. Note that each Contact can only receive the Email once - it's like a mailing list.

.. image:: images/email-segments.jpg
  :width: 400
  :alt: Screenshot showing selecting email segments in Mautic

This entry field is a multi-select which allows you to choose several segments if necessary.

Mautic initiates the sending of these emails with a :doc:`/set_up/cron_jobs` - see section on Send Scheduled Broadcasts (e.g. segment emails) for more details on this.

Email formats
*************

In Mautic, it's possible to create Emails in both full HTML as well as basic text format - delivered as necessary to Contacts based on what their client supports. This is an important part of creating a strong relationship with Contacts by providing relevant information in the correct format.

Managing Emails
***************

Email overview
==============

The Email overview allows at-a-glance information regarding the success or failure of a particular Email. You can quickly see relevant information in regards to opens, bounces, successful click-throughs and other important statistics.

Translations
============

When creating the Email, an option is given to assign a language and a translation parent. By selecting a translation parent, the current item is then considered to be a translation in the selected language of that parent item. If a Contact has a preferred language set, they will receive the translated version in their preferred language if it exists. Otherwise, they will receive the parent in the default language.

It is also possible to have translations of A/B test variants.

Base64 encoded images
=====================

It is possible to encode all images in the email text as base64. It will attach the image inside the email body. It has several implications:

.. image:: images/base64-images.jpg
  :width: 400
  :alt: Screenshot showing Base64 settings for images in emails

- The main idea with this option is that most of the email clients will display the images directly, without the need to allow images to be displayed.
- Some email clients like Gmail will require the approval to display Base64 encoded images due to the tracking pixel being an image, and won't display the Base64 encoded images as a result. See the next paragraph for possible solution.
- The Email body will increase significantly if the Email contains many and/or large sized images. Some email clients like Gmail will "clip" such email and won't display it directly.

Tokens
======

Tokens can be used in emails which enables the integration of a number of Contact fields to use in your Emails. These can be easily placed within your Emails and are automatically replaced with the appropriate text once sent.

Check the :doc:`/set_up/variables` page for a list of all the available default fields.

Default value
~~~~~~~~~~~~~

A token can have a default value for cases when the contact doesn't have the value known. The default value can be specified after a ``|`` character, for example:

.. code-block:: php

    Hello {contactfield=firstname|friend}

The ``|friend`` tells Mautic to use 'friend' if there is no first name present in the Contact field.

Encoded value
~~~~~~~~~~~~~

It is possible to encode values used in a token using the following syntax:

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

The date will be displayed in a human-readable format taken from the settings in your Global Configuration > System Settings for 'Default format for date only' and 'Default time only format'.

Contact replies
===============

To make use of monitoring replies from Contacts, you must have access to an IMAP server **other than Google or Yahoo** (as they overwrite the return path, which prevents this feature from working).

.. note::
  To use the Monitored email feature you must have the PHP IMAP extension enabled (most shared hosts will already have this turned on).

#. Configure all Mautic sender/reply-to email addresses to send a copy to one single inbox (most email providers support this feature in their configuration panel).

.. note::
  It is best to create an email address specifically for this purpose, as Mautic will read each message it finds in the given folder.

#. Go to the Mautic configuration and set up the inbox to monitor replies.

.. image:: images/contact-replies-imap-folder.png
  :width: 400
  :alt: Screenshot showing IMAP mailbox setting for reply monitoring

#. To fetch and process the replies, run the following cron command:

``php path/to/mautic/bin/console mautic:email:fetch``

Usage
~~~~~
Contact replies can be used within Campaigns as decision after an Email has been sent, to take action based on whether the user has replied to the Email. Mautic tries to read the inbox, parse messages, and find replies from the specified Contact. The Contact, when a match is found, will proceed down the positive path immediately after the reply is detected.


.. image:: images/contact-replies-campaign-decision.png
  :width: 400
  :alt: Screenshot showing contact replies campaign action


Mailer as Owner
***************

This functionality allows Mautic to automatically personalize emails sent to a Contact who has an owner (Mautic User) assigned to them. This feature changes the from Email, from name and signature by changing the default setting to the Mautic Contact owner's user setting.

Sending from the Contact owner
==============================

#. Open the admin menu by clicking the cog icon in the top right corner.
#. Select the Configuration menu item.
#. Select the Email Settings tab.
#. Switch the Mailer is owner to Yes.
#. Save the configuration.

Overriding the mailer as owner setting
======================================
It is possible to override the global setting on a per-email basis.

There is a switch under the advanced settings of the email, which allows you to decide whether to take the global mailer as owner setting, or the specified from address, into account.

.. image:: images/mailer-as-owner-switch.png
  :width: 400
  :alt: Screenshot showing mailer as owner switch

If Yes is selected, then the global setting will take precedence.

If No is selected, the address and name supplied in the email 'From' fields will be used.

Signatures
**********

Setting a signature can be done in two places:

#. The default signature is in the Configuration > Email Settings tab. The default text is 


.. code-block:: html

  Best regards,<br/>|FROM_NAME|.

The ``|FROM_NAME|`` token will be replaced by the name which is also defined in the Email Settings tab.

This signature will be used by default if the Contact does not have an owner assigned.

#. Every Mautic User can configure their own signature in the profile edit page. This signature will be used by default if the Contact has an owner assigned to them.

.. note::
  There are some exceptions where the Contact owner's signature won't be used, which is when a User sends an email directly from a Contact's profile.  In this case, the currently logged in User's signature will be used with the from name and email being those specified in the email send form, and not the Contact owner.  The values used are pre-filled with those of the currently logged in Mautic User.
  
  It doesn't matter if the Contact has another owner assigned or if it doesn't have an owner at all.

  Also, when sending a test Email this is also the case.

Using the email signature
=========================

The signature can be placed into an email text using the ``{signature}`` token.

Email delivery
##############

Mautic delivers emails using the method defined by the system administrator. If you are the system administrator for your company, then you need to add the email protocol for your Mautic instance to use. Mautic integrates with any email service provider which offers SMTP mail servers as well as several distinct services such as :xref:`Mandrill`, :xref:`Gmail`, :xref:`Sendgrid`, :xref:`Mailjet`, :xref:`Postmark`, :xref:`Sendmail` and :xref:`Amazon SES`.

The system can either send Emails immediately or queue them for processing in batches by a :doc:`cron job </set_up/cron_jobs>`.

Immediate delivery
******************

This is the default means of delivery. As soon as an action in Mautic triggers an Email to send, it's sent immediately. If you expect to send a large number of Emails, you should use the queue. Sending Email immediately may slow the response time of Mautic if using a remote mail service, since Mautic has to establish a connection with that service before sending the mail. Also attempting to send large batches of Emails at once may hit your server's resource limits or Email sending limits if on a shared host.

Queued delivery
***************

Mautic works most effectively with high send volumes if you use the queued delivery method. Mautic stores the Email in the configured spool directory until the execution of the command to process the queue. Set up a :doc:`cron job </set_up/cron_jobs>` at the desired interval to run the command:

.. code-block:: shell
    
    php /path/to/mautic/bin/console mautic:email:process

Some hosts may have limits on the number of Emails sent during a specified time frame and/or limit the execution time of a script. If that's the case for you, or if you just want to moderate batch processing, you can configure batch numbers and time limits in Mautic's Configuration.  See the :doc:`cron job documentation </set_up/cron_jobs>` for more specifics.

Tracking Opened Emails
**********************

Mautic automatically tags each Email with a tracking pixel image. This allows Mautic to track when a Contact opens the Email and execute actions accordingly. Note that there are limitations to this technology - the Contact's email client supporting HTML and auto-loading of images, and not blocking the loading of pixels. If the email client doesn't load the image, there's no way for Mautic to know the opened status of the Email.

By default, Mautic adds the tracking pixel image at the end of the message, just before the ``</body>`` tag. If needed, one could use the ``{tracking_pixel}`` variable within the body content token to have it placed elsewhere.  Beware that it should not be inserted directly after the opening ``<body>`` because this prevents correct display of pre-header text on some email clients.

It is possible to turn off the tracking pixel entirely if you do not need to use it, in the Global Settings.

Tracking links in Emails
========================

Mautic tracks clicks of each link in an Email, with the stats displayed at the bottom of each Email detail page under the Click Counts tab.

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

Mautic provides a feature which allows monitoring of IMAP accounts to detect bounced emails and unsubscribe requests.

Note that Mautic makes use of "append" email addresses. The return-path or the list-unsubscribe header will use something like ``youremail+bounce_abc123@your-domain.com``. The bounce or unsubscribe allows Mautic to determine what type of email it is when it examines the inbox through IMAP. The ``abc123`` gives Mautic information about the email itself, i.e. which contact it was it sent to, what Mautic email was used, etc.

Some email services overwrite the return-path header with that of the account's email (Gmail, Amazon SES). In these cases, IMAP bounce monitoring will not work.

Elastic Email, SparkPost, Mandrill, Mailjet, SendGrid and Amazon SES support webhook callbacks for bounce management. See below for more details.

Monitored Inbox Settings
************************

To use the Monitored Email feature you must have the PHP IMAP extension enabled (most shared hosts will already have this turned on).  Go to the Mautic configuration and fill in the account details for the inbox(es) you wish to monitor.

.. image:: images/bounce_management/asset-monitored-inbox-settings.png
  :width: 400
  :alt: Screenshot showing IMAP mailbox setting for reply monitoring

It is possible to use a single inbox, or to configure a unique inbox per monitor.

To fetch and process the messages, run the following command:

.. code-block:: shell
  
  php /path/to/mautic/bin/console mautic:email:fetch

Note that it is best to create an Email address specifically for this purpose, as Mautic will read each message it finds in the given folder.

If sending mail through Gmail, the Return Path of the Email will automatically be rewritten as the Gmail address. It is best to use a sending method other than Gmail, although Mautic can monitor a Gmail account for bounces.

If you select an Unsubscribe folder, Mautic will also append the email as part of the "List-Unsubscribe" header. It will then parse messages it finds in that folder and automatically unsubscribe the Contact.

Webhook bounce management
*************************

Elastic Email Webhook
=====================

1. Login to your Elastic Email account and go to Settings -> Notification.

2. Fill in the Notification URL as ``https://mautic.example.com/mailer/elasticemail/callback``

3. Check these actions: Unsubscribed, Complaints, Bounce/Error

.. image:: images/bounce_management/elasticemail_webhook_1.png
  :width: 400
  :alt: Screenshot showing Elastic Email webhook settings

Useful resources
~~~~~~~~~~~~~~~~

- :xref:`Elastic Support` - Elastic Email's Helpdesk
- :xref:`Getting Started with Elastic` - Getting Started resources from Elastic Email

Amazon SES Webhook
==================

Mautic supports the bounce and complaint management from Amazon Simple Email Service (Amazon SES).

1. Go to the Amazon Simple Notification Service (SNS) and create a new topic:

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
  When using the **SMTP method**, the callback URL will be your Mautic URL followed by ``/mailer/amazon/callback``.

  When using the **API method** (available since Mautic 3.2), the callback URL will be your Mautic URL followed by ``/mailer/amazon_api/callback``.

  .. image:: images/bounce_management/amazon_webhook_5.png
    :width: 400
    :alt: Enter URL in Mautic

4. The subscriber will be in the pending state until it is confirmed. SES will call your Amazon Webhook with a ``SubscriptionConfirmation`` request including a callback url. To confirm, Mautic will send a request back to this callback url to validate the subscription. Therefore make sure your Mautic installation is allowed to connect to the internet, otherwise the subscription will remain in the pending state and won't work. If your Webhook is HTTPS, you also need to make sure that your site is using a valid SSL certificate which can be verified by Amazon.

Check the logfile for more information. If you are having problems getting the subscription out of the pending state, it may also help to configure the topic's 'Delivery status logging' settings, so that delivery status (at least for HTTP/S) gets logged to CloudWatch. Then you can visit the Logs section of the CloudWatch Management Console and see the exact details of delivery failures. For example, an invalid SSL certificate might result in an event like the following appearing in the CloudWatch logs:

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

Mandrill Webhook
================

Mautic supports a few of Mandrill's webhooks for bounces.

1. Login to your Mandrill account and go to Settings -> Webhooks

  .. image:: images/bounce_management/mandrill_webhook_1.png
    :width: 400
    :alt: Screenshot showing Mandrill Webhooks

2. Click Add a Webhook

 .. image:: images/bounce_management/mandrill_webhook_2.png
  :width: 400
  :alt: Screenshot showing addition of Mandrill Webhooks

Mautic supports the following webhooks: Message is Bounced, Message is Soft-Bounced, Message is Rejected, Message is Marked as Spam and Message Recipient Unsubscribes.

1. Fill in the Post To Url as ``https://mautic.example.com/mailer/mandrill/callback`` then click Create Webhook.

2. Click Custom Metadata and create two new metadata fields: ``hashId`` and ``contactId``

 .. image:: images/bounce_management/mandrill_webhook_5.png
  :width: 400
  :alt: Screenshot showing addition of metadata

 .. image:: images/bounce_management/mandrill_webhook_4.png
  :width: 400
  :alt: Screenshot showing addition of metadata

Mailjet Webhook
===============
Mautic supports Mailjet's webhooks for bounces, spam and blocked. Before any configuration, you'll need to create an account on :xref:`Mailjet`.

1. Login to your Mailjet account and go to My Account > Event tracking (triggers)

 .. image:: images/bounce_management/mailjet_webhook_1.png
  :width: 400
  :alt: Screenshot showing Mailjet webhooks

2. On the event type list, select the one you want to link to your Mautic account

 .. image:: images/bounce_management/mailjet_webhook_2.png
  :width: 400
  :alt: Screenshot showing adding Webhooks

Mautic supports the following webhooks: Message is Bounced, Message is Blocked, Message is Spam.

3. Fill in the URL boxes as ``https://mautic.example.com/mailer/mailjet/callback``.

Sparkpost Webhook
=================
1. Login to your Sparkpost account and go to Account -> Webhooks.

 .. image:: images/bounce_management/sparkpost_webhook_1.png
  :width: 400
  :alt: Screenshot showing Sparkpost webhooks

2. Click the New Webhook button top right

 .. image:: images/bounce_management/sparkpost_webhook_2.png
  :width: 400
  :alt: Screenshot showing new Webhooks

3. Fill in the Target URL as ``https://mautic.example.com/mailer/sparkpost/callback``

4. Select the following Events

 .. image:: images/bounce_management/sparkpost_webhook_2.png
  :width: 400
  :alt: Screenshot showing events

Sendgrid Webhook
================

1. Login to your SendGrid account and go to Settings > Mail Setting > Mail Settings

 .. image:: images/bounce_management/sendgrid_webhook_1.png
  :width: 400
  :alt: Screenshot showing SendGrid webhooks

2. Fill in the Target URL as `https://mautic.example.com/mailer/sendgrid_api/callback`

3. Select the following Events

 .. image:: images/bounce_management/sendgrid_webhook_2.png
  :width: 400
  :alt: Screenshot showing Events

4. Save setting (on the right side of "Event Notification" row):

 .. image:: images/bounce_management/sendgrid_webhook_3.png
  :width: 400
  :alt: Screenshot showing save settings

Create a segment with bounced emails
************************************

This is not required, but if you want to be able to select the contacts with bounced Emails easily - for example to delete all bounced contacts - create a segment with bounced Emails.

1. Go to Segments > New.
2. Type in the Segment name. For example Bounced Emails.
3. Select the Filters tab.
4. Create new Bounced Email equals Yes filter.
5. Wait for the ``bin/console mautic:segments:update`` command to be automatically triggered by a cron job or execute it manually.
6. All contacts with bounced emails should appear in this segment.

Troubleshooting Emails
**********************

Email open tracking
===================

Email opens are being tracked by a tracking pixel. This is a 1 pixel GIF image in the source code of Email messages sent by Mautic.

When an Email is opened by an Email client like Outlook, Thunderbird or GMail, the client tries to load the images in it. The image load request is what Mautic uses to track the Email open action.

Some Email clients have auto loading images disabled, and users have to click on a "Load Images" button to load images inside an email message.  Some will automatically open all images before delivering the Email to the Contact.

If the images aren't loaded for this reason or another, or if they are opened automatically before the email is passed to the Contact, Mautic doesn't know about the open action. Therefore, email open tracking is not very accurate.

Email link tracking
===================

Before an Email is sent, Mautic replaces all links in the Email with links back to Mautic including a unique key. If the Contact clicks on such a link, the Contact is redirected to Mautic, which then tracks the click action and redirects the Contact to the original location. It's fast, so the Contact doesn't usually notice the additional redirect.

If the email click doesn't get tracked, make sure that:

1. Your Mautic server is on an accessible URL. 
2. Make sure the email was sent to an existing Contact via a Campaign or a Segment email. Emails sent by the Send Example link, direct Email (from the contact detail) or Form submission preview Emails won't replace links with trackables.
3. Make sure the URL in the href attribute is absolute and valid. It should start with http:// or (ideally) https://.
4. You've opened the link in a incognito browser (not in the same session where you're logged into Mautic)
5. Check if the link in the Email has been replaced by Mautic's tracking link.

Unsubscribe link doesn't work
=============================
The unsubscribe link **doesn't work in test emails**.

This is because the test emails are sent to a Mautic User and not to a Mautic Contact.

Mautic users cannot be unsubscribed and therefore the unsubscribe link looks like this: ``https://mautic.example.com/|URL|``. However, the link **will** work correctly when you send the email to a contact.

Best practice is to create a segment with a small number of users to receive test emails (for example, yourself) - this will ensure that you can fully test features such as unsubscribe behaviour.

