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
###############

Email overview
**************

The Email overview allows at-a-glance information regarding the success or failure of a particular Email. You can quickly see relevant information in regards to opens, bounces, successful click-throughs and other important statistics.

Translations
************

When creating the Email, an option is given to assign a language and a translation parent. By selecting a translation parent, the current item is then considered to be a translation in the selected language of that parent item. If a Contact has a preferred language set, they will receive the translated version in their preferred language if it exists. Otherwise, they will receive the parent in the default language.

It is also possible to have translations of A/B test variants.

Base64 encoded images
*********************

It is possible to encode all images in the email text as base64. It will attach the image inside the email body. It has several implications:

.. image:: images/base64-images.png
  :width: 400
  :alt: Screenshot showing Base64 settings for images in emails

- The main idea with this option is that most of the email clients will display the images directly, without the need to allow images to be displayed.
- Some email clients like Gmail will require the approval to display Base64 encoded images due to the tracking pixel being an image, and won't display the Base64 encoded images as a result. See the next paragraph for possible solution.
- The Email body will increase significantly if the Email contains many and/or large sized images. Some email clients like Gmail will "clip" such email and won't display it directly.

Tokens
******

Tokens can be used in emails which enables the integration of a number of Contact fields to use in your Emails. These can be easily placed within your Emails and are automatically replaced with the appropriate text once sent.

Check the :doc:`/setup/variables` page for a list of all the available default fields.

Default value
=============

A token can have a default value for cases when the contact doesn't have the value known. The default value can be specified after a ``|`` character, for example:

.. code-block:: php

    Hello {contactfield=firstname|friend}

The |friend tells Mautic to use 'friend' if there is no first name present in the Contact field.

Encoded value
=============

It is possible to encode values used in a token using the following syntax:

.. code-block:: php

    Hello {contactfield=firstname|true}

The ``|true`` tells Mautic to encode the value used, for example in URLs.

Date formats
============

To use custom date fields in tokens, use the following format:

.. code-block:: php

    {contactfield=DATEFIELDALIAS|datetime}
    {contactfield=DATEFIELDALIAS|date}
    {contactfield=DATEFIELDALIAS|time}

The date will be displayed in a human-readable format taken from the settings in your Global Configuration > System Settings for 'Default format for date only' and 'Default time only format'.

Email delivery
##############

Mautic delivers emails using the method defined by the system administrator. If you are the system administrator for your company, then you need to add the email protocol for your Mautic instance to use. Mautic integrates with any email service provider which offers SMTP mail servers as well as several distinct services such as :xref:`Mandrill`, :xref:`Gmail`, :xref:`Sendgrid`, :xref:`Mailjet`, :xref:`Postmark`, :xref:`Sendmail` and :xref:`Amazon SES`.

The system can either send Emails immediately or queue them for processing in batches by a :doc:`<cron job>/set_up/cron_jobs`.

Immediate delivery
==================

This is the default means of delivery. As soon as an action in Mautic triggers an Email to send, it's sent immediately. If you expect to send a large number of Emails, you should use the queue. Sending Email immediately may slow the response time of Mautic if using a remote mail service, since Mautic has to establish a connection with that service before sending the mail. Also attempting to send large batches of Emails at once may hit your server's resource limits or Email sending limits if on a shared host.

Queued delivery
===============

Mautic works most effectively with high send volumes if you use the queued delivery method. Mautic stores the Email in the configured spool directory until the execution of the command to process the queue. Set up a :doc:`<cron job>/set_up/cron_jobs` at the desired interval to run the command:

.. code-block:: shell
    
    php /path/to/mautic/bin/console mautic:email:process

Some hosts may have limits on the number of Emails sent during a specified time frame and/or limit the execution time of a script. If that's the case for you, or if you just want to moderate batch processing, you can configure batch numbers and time limits in Mautic's Configuration.  See the :doc:`<cron job documentation>/setup/cron_jobs` for more specifics.

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
