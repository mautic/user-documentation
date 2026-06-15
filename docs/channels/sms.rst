SMS Text Messages
#################

With the SMS Channel it's possible to send text messages from Campaigns in Mautic.

.. note::
    To use this Channel you must first set up an SMS transport, such as :doc:`/plugins/twilio`.

.. vale off

Type of Text Messages
*********************

.. vale on

Mautic allows you to create two types of Text Messages, in the same way as you can create different types of Emails.

.. vale off

Template Text Messages
======================

.. vale on

A template Text Message is automatically sent by Campaigns, Forms, Point Triggers etc. You can edit Template Text Messages after creation, but they can't manually send them to a Contact list.

.. vale off

Segment Text Messages
=====================

.. vale on 

A Segment Text Message can be manually sent to Contact lists - Segments - in Mautic. Once sent, you can't edit the Text Message, however you can send it to new Contacts as they join the associated Segment.

Note that these are marketing Text Messages by default, and each Contact can only receive the Text Message once - it's the same principle as a mailing list.

You must initiate the send of Segment Text Messages with the ``Send Scheduled Broadcast`` cron job. See :doc:`cron jobs documentation </configuration/cron_jobs>` for more information.

.. vale off

Creating a Text Message
***********************

.. vale on

To create a Text Message, navigate to Channels > Text Messages and click the 'New' button.

  .. image:: images/sms/sms-create-sms.png
    :width: 400
    :alt: Screenshot showing create new SMS button

Select whether you wish to create a Template or Segment Text Message, which presents the required fields.

.. vale off

Template Text Message fields
============================

.. vale on

The following fields are available:

  .. image:: images/sms/sms-new-triggered-text-message-fields.png
    :width: 400
    :alt: Screenshot showing the fields required for a new Template Text Message

**Internal name** - This is the internal name used within Mautic when referring to this Text Message. For example Mautic uses this in dropdown selection lists in the Campaign Builder.

.. vale off

**Text Message** - This is the actual content of the Text Message which is sent to the Contact. There is a character count below the field which helps you to identify the required number of messages to send the full text. You may use tokens, such as ``{contactfield=firstname}``. To find the appropriate token, go to Settings > Custom Fields and use the field alias with the token format: {contactfield=fieldalias}.

.. vale on

**Category** - This allows you to select a Category to help you with organizing your Text Messages.

**Language** - This allows you to set the language of this Text Message.

**Published** - This allows you to set the published status of the Text Message. Unpublished Text Messages aren't sent.

.. vale off

Segment Text Message fields
============================

.. vale on

The following fields are available:

  .. image:: images/sms/sms-new-segment-sms.png
    :width: 400
    :alt: Screenshot showing the fields required for a new Segment Text Message

**Internal name** - This is the internal name used within Mautic when referring to this Text Message. For example, Mautic uses this in dropdown selection lists in the Campaign Builder.

.. vale off

**Text Message** - This is the actual content of the Text Message sent to the Contact. There is a character count below the field which helps you to identify the required number of messages to send the full text. You may use tokens, such as ``{contactfield=firstname}``. To find the appropriate token, go to Settings > Custom Fields and use the field alias with the token format: {contactfield=fieldalias}.

.. vale on

**Category** - This allows you to select a Category to help you with organizing your Text Messages.

**Language** - This allows you to set the language of this Text Message.

**Published** - This allows you to set the published status of the Text Message. Unpublished Text Messages aren't sent.

**Contact Segment** - This allows you to define the Segment/s who should receive the Text Message.

.. vale off

**Publish at (date/time)** - This allows you to define the date and time at which this Text Message is available for sending to Contacts

**Unpublish at (date/time)** - This allows you to define the date and time at which this Text Message ceases to be available for sending to Contacts.

.. vale off

.. _sending MMS in SMS section:

Sending Multimedia Messages - MMS
=================================

.. vale on

Mautic supports sending MMS, which allows you to attach images to your Text Messages. MMS messages appear in the Text Messages list with an image icon indicator, and the Campaign Builder dropdown shows an ``[MMS]`` prefix for messages with media attached.

.. note::

   MMS is currently available for Contacts with phone numbers in the United States, Canada, and Australia only. When sending to Contacts outside these regions, Mautic sends the image as a URL link instead.

.. vale off

Enabling MMS for a Text Message
-------------------------------

.. vale on

To send a Text Message with media:

#. Create or edit a Text Message.
#. Toggle the **Is MMS** option to enable media attachments.
#. Add media using one of the following methods:

   * Click the **Upload Media** button to select an image from your Mautic Asset Manager
   * Enter an external image URL in the text field and press Enter or click the arrow button to add it

#. To remove an attached image, click the **X** overlay that appears when you select the image thumbnail.

.. vale off

MMS media requirements
----------------------

.. vale on

* **Supported formats**: ``.gif``, ``.png``, ``.jpg``, and ``.jpeg``
* **Maximum images**: 10 images per MMS
* **Total size limit**: 5 MB for all attached media combined

.. note::
   
   Mautic doesn't validate external URLs. Ensure your external images use a supported format and the total size is under 5 MB.

Creating Text Messages from Campaign Builder
============================================

.. vale on

It's also possible to create a Text Message from within the Campaign Builder. To do this, select the Campaign Action of Send Text Message and press the New Text Message button rather than selecting an existing Text Message in the dropdown.

  .. image:: images/sms/sms-send-sms-campaign.png
    :width: 400
    :alt: Screenshot showing the option to create an SMS from a Campaign

As you plan to use this Text Message within a Campaign, it's by default created as a Template Text Message and show the relevant fields accordingly.

.. vale off

Sending Text Messages as a Marketing Messages
=============================================

.. vale on

Mautic allows you to create a single message - for example 'Red shoes on offer today!' - in multiple Channels, and have it delivered through the Channel which the Contact prefers. This means that they only receive the message once, and through their preferred Channel. You can create the messages under the :doc:`/channels/marketing_messages` section.

If a Contact's preferred Channel is Text Messages, Mautic delivers the message through the Text Message Channel when a Marketing Message includes a Text Message.

  .. image:: images/sms/sms-send-marketing-message.png
    :width: 400
    :alt: Screenshot showing the option to send a Text Message as a Marketing Message

Managing unsubscribes
*********************

.. note::
    In order for Mautic to process Text Message replies for unsubscribes and replies to messages, you must first configure the Webhook. For more information review the :doc:`/plugins/twilio` documentation.

Contacts can unsubscribe from your Text Messages by replying with the word ``STOP``, or any of the accepted phrases (``STOP``, ``STOPALL``, ``UNSUBSCRIBE``, ``CANCEL``, ``END``, and ``QUIT``), to your SMS.  Once Mautic receives this SMS, Mautic flags the specific Contact as 'Do Not Contact' (DNC) for the SMS Channel, and won't allow messages again via this Channel unless the Contact manually re-subscribes at a later date.

You can also view SMS replies in the Contact timeline:

  .. image:: images/sms/sms-contact-reply.png
    :width: 400
    :alt: Screenshot showing the reply from SMS 

.. vale off

Working with replies to Text Messages
*************************************

.. vale on

In a Mautic Campaign, where Mautic has an active Text Message provider, there is a Campaign Action called 'Sends a Text Message' which allows you to monitor incoming replies for specific patterns and take action accordingly.

  .. image:: images/sms/sms-reply-campaigns.png
    :width: 400
    :alt: Screenshot showing the Campaign action 'Sends a Text Message'

This decision tracks replies to your messages and looks for specified patterns within a message. This isn't dependent on you first sending the Contact a message.

For example, you can specify 'red' in 'Pattern the reply should match'. If your message contains language, such as reply from the Contact using the word 'Red' to a question of their favourite shoe colour, Mautic looks for incoming Text Messages with that pattern. In this example, you may add an action on the decision's Yes path for adding a colour preference to the Contact's profile.

Important notes
***************

- Contact phone numbers should be in the format +XXXXXXX including the + and with no spaces
- There must be a phone number in the Mobile Phone Contact field
- When configuring the Twilio Plugin, the sender number must be in the format +XXXXXXX and this number associated with the Twilio account
