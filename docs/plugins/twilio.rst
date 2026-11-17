.. vale off

Twilio
######

Mautic - Twilio Plugin
======================

.. vale on

Before you start to send text messages from your Mautic instance, it needs to connect to the service which can send them.

The first and default implemented service is :xref:`Twilio`. 

In order to configure the text messages correctly, follow these steps:

1. Create an account at :xref:`Twilio`.

2. In Mautic, go to *Settings* (cog icon) > *Plugins*.

3. Open *Twilio* Plugin and activate it.

4. Log into your Twilio account and go to *Dashboard*.

 .. image:: images/twilio-sid-authtoken.png
    :width: 400
    :alt: Screenshot of the SID and Auth Token fields


5. Copy the *Account Sender ID (SID)* from Twilio account and paste it to *Account Sender ID* field in the Twilio Plugin configuration.

6. Unlock and copy the *Auth Token* and paste it to *Auth Token* field in the Twilio Plugin configuration.

7. Go to *Phone Numbers* > Active numbers in Twilio, add a phone number if you haven't already commissioned one.

8. Go to *Messaging* > *Services* in Twilio, and create a new Messaging Service. Select the appropriate settings from the dropdown in the first step as relevant to your usage of SMS messages with Mautic, then click 'Create Messaging Service' at the bottom right.

 .. image:: images/twilio-messaging-services.png
    :width: 400
    :alt: Screenshot of the Messaging Services interface

9. Click the button to add your phone number as a Sender for this Messaging Service, then select the box and click 'Set up Integration' at the bottom right to move on to the next step.

10. Select 'Send a Webhook' under the Integration settings.

11. Configure the Request URL and Fallback URL to use the callback URL of ``https://example.com/sms/twilio/callback`` where ``example.com`` is your Mautic instance domain. Also enter this in the 'Delivery Status Callback' field.

 .. image:: images/twilio-webhook-callback.png
    :width: 400
    :alt: Screenshot of the Messaging Services interface

12. Click the 'Add Compliance Info' button to proceed to the next step, where you can register to send Application to Person (A2P) messages using a 10 digit long code phone number. Otherwise, click the button in the bottom right to complete setup. Click on 'View my new Messaging Service' to see the details of the service you just created. Once created you can view the SID from the Messaging > Services screen.

 .. image:: images/twilio-messaging-service-id.png
    :width: 400
    :alt: Screenshot of the Messaging Services ID field on Twilio.

13. Copy the Messaging Service ID and paste this into the 'Features' tab of your Mautic Twilio Plugin settings

 .. image:: images/twilio-messaging-service-id-mautic.png
    :width: 400
    :alt: Screenshot of the Messaging Services ID field in Mautic.

14. Configure the global frequency rules for the SMS Channel as appropriate for your business.

15. Select the *Published*? switch to *Yes* in the Enabled/Auth tab in Mautic and save the Plugin configuration.

.. vale off

Enabling Multimedia Messaging - MMS
===================================

.. vale on

To send MMS messages with images attached, your Messaging Service needs an MMS-capable Twilio phone number that can reach your Contacts. For Contacts in the United States and Canada, use a number from either of those countries. For Contacts in Australia, use an Australian number. Twilio sends media only when the sender number supports MMS, so you don't turn on MMS in the Messaging Service itself.

To add an MMS-capable sender to your Messaging Service:

#. In Twilio Console, go to **Phone Numbers** > **Manage** > **Active numbers** and make sure that the capabilities of the number you want to use include MMS.
#. Go to **Messaging** > **Services** and select your Messaging Service.
#. Open the **Sender Pool** and add the number if it isn't there already.

.. note::

   Twilio delivers MMS only to phone numbers in the United States, Canada, and Australia. Mautic sends the same message to every Contact, so the result for other countries, and for carriers that don't support MMS, depends on your Twilio settings. If you turn on **MMS Converter** under **Content Settings** in your Messaging Service, Twilio sends an SMS with a link to the image instead. Otherwise, Twilio doesn't deliver the message. MMS Converter doesn't replace an MMS-enabled sender, because Twilio can't send media from a number without MMS capability.

For more information on creating MMS messages in Mautic, see :ref:`sending MMS in SMS section`.

.. vale off

Alphanumeric Sender ID
======================

.. vale on

Alphanumeric Sender ID allows you to send SMS messages using a personalized sender name, in supported countries see :xref:`International Support for Alphanumeric Sender ID`.

Instead of using an E.164 formatted Twilio Phone number for the 'From' value, you can use a custom string like your own business' branding.

.. note:: 

     You can't reply directly to messages sent out with an Alphanumeric Sender ID.

.. vale off 

Alphanumeric Sender ID requirements
***********************************

.. vale on

Alphanumeric Sender ID is automatically supported on all new :xref:`upgraded (paid) Twilio accounts`. It's not supported for Free Trial accounts.

You can verify if your account has Alphanumeric Sender enabled by following these steps:

#. Login to your account at :xref:`Twilio`.

#. From the left side navigation bar, click Messaging > Overview.

#. Click Settings.

#. From the General Messaging Settings page, Verify the 'Alphanumeric Sender ID' setting.

 .. image:: images/twilio-alpha-numeric-number-settings.png
    :width: 400
    :alt: Screenshot of the Alphanumeric settings on Twilio.

.. vale off

Adding alphanumeric sender ID to a Messaging Service
====================================================

#. Open your Messaging Service via your Twilio Dashboard

#. Under the **Senders** section, click the **Add Senders IDs** button

#. From the **Add Senders IDs** dropdown, select **Alpha Sender** and enter the alphanumeric sender ID that you want to add to the Sender Pool.

Read more info about :xref:`Alphanumeric Sender ID` on Twilio site.