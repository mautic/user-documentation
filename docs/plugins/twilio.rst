.. vale off

Twilio
######

Mautic - Twilio Plugin
======================

.. vale on

Before you start to send text messages from your Mautic instance, it needs to connect to the service which can send them.
The first and default implemented service is :xref:`Twilio`. 
In order to configure the text messages correctly, follow these steps:

#. Create an account at :xref:`Twilio`.

#. In Mautic, go to *Settings* (cog icon) > *Plugins*.

#. Open *Twilio* Plugin and activate it.

#. Copy the *Account SID* from Twilio account and paste it to *Account SID* field in the Twilio Plugin configuration.

#. Unlock and copy the *Auth Token* and paste it to *Auth Token* field in the Twilio Plugin configuration.

#. Go to *Products* > *Phone Numbers* in Twilio, copy the number and paste it to the *Sending Phone Number* field in Mautic.

#. Select the *Text Message Enabled*? switch to *Yes* and save the Mautic configuration.

.. vale off

Alphanumeric Sender ID
======================

.. vale on

Alphanumeric Sender ID allows you to send Twilio Programmable SMS messages using a personalized sender name, in supported countries see :xref:`International Support for Alphanumeric Sender ID`.

Instead of using an E.164 formatted Twilio Phone number for the "From" value, you can use a custom string like your own business' branding.

.. note:: 

     You can't reply directly to messages sent out with an Alphanumeric Sender ID.

.. vale off 

Alphanumeric Sender ID requirements
***********************************

.. vale on

Alphanumeric Sender ID is automatically supported on all new :xref:`upgraded (paid) Twilio accounts`. It's not supported for Free Trial accounts.

You can verify if your account has Alphanumeric Sender enabled by following these steps:

#. Login to your account at :xref:`Twilio`.

#. From the left side navigation bar, click Programmable SMS.

#. Click Settings.

#. Verify that "Alphanumeric Sender ID" is set to Enabled.

Follow these steps to see if your account has Alphanumeric Sender enabled.

.. vale on

Send SMS Messages using an Alphanumeric Sender ID with Mautic
*************************************************************

.. vale off 

Just setup your alias in plugin settings:

 .. image:: images/alphanumeric-id.png
    :width: 400
    :alt: Screenshot of alphanumeric-id

Read more info about :xref:`Alphanumeric Sender ID` on Twillio site.