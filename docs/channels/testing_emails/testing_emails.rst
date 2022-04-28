.. vale off

Testing Email transports
########################

.. vale on
  
This document targets software developers who write Email transports based on ``Symfony Mailer`` which is available to Mautic from Mautic 5.0.  
  
This document describes Manual steps for testing and the items that you need to verify before submitting your PR for approval in case you want to add a new transport.  
  
Email components
****************

Each Email sent out by Mautic includes the following components:  
  
#. **Email Address:** (``FROM``, ``TO``, ``CC``, ``BCC``, ``REPLY-TO``): ``Unicode`` Email address in this format ``email@example.com`` or ``email+test@example.com``. Make sure that you always use the Unicode email address to accommodate special characters in languages like Arabic, Hebrew, or Chinese.  
#. **Email Name:** (``FROM``, ``TO``, ``CC``, ``BCC``, ``REPLY-TO``): ``Unicode`` Human-readable name, make sure that you always use Unicode Email address to accommodate special characters in languages like Arabic, Hebrew, or Chinese.  
#. **Subject:** ``Unicode`` string that might include emojis.  
#. **Text:** ``Unicode`` string that might include emojis.  
#. **HTML:** ``Unicode`` string that might include emojis, in HTML format.  
#. **Headers:** ``ANSI`` string pairs, ``Symfony/Mailer`` adds most of the headers, but for some transports, you need to add your own headers, so you can use the methods mentioned here: https://symfony.com/doc/current/mailer.html#message-headers, referenced in this file https://github.com/symfony/symfony/blob/HEAD/src/Symfony/Component/Mime/Header/Headers.php. 
#. **Priority:** sets the Email priority based on ``enum``
#. **Attachments:** a file with a variety of mime types, the file size shouldn't exceed a specific size provided by the transport provider, usually nothing more than 10 MB and go up to 40 MB (for the whole message, including the text, HTML, and anything embedded within the HTML)  
  
Preparing Mautic for testing
****************************

#. Create 10 Contacts with any Email address you need  
#. Create a Segment that includes the 10 Contacts  

.. vale off

Testing Email transport
***********************

.. vale on

In order to test the Email transport you need to go through the following steps:  
  
Testing the connection
======================

Go to Mautic Configuration -> Email Settings -> Click on Test Connection. If the connection works you should see **success** otherwise you should see an **error**  

.. image:: images/test-connection.png
  :width: 600
  :alt: Screenshot showing testing the connection

.. vale off

Sending a sample Email
======================

.. vale on

From the same screen where you test the connection, you can send a sample Email. Mautic sends the sample Email to the address of the currently logged in Mautic User. Check that the Email arrives.  
  
.. vale off

Upload an Asset
===============

.. vale on

Go to Components -> Assets and then upload a sample file and make sure the filename uses one of the Unicode languages - such as Arabic, Russian, German, etc.
  
.. vale off

Create a template Email
=======================

.. vale on

Go to Channels -> Emails -> New -> Template Email -> Select Blank Theme  
Use the builder to do the following:

- Embed an image  
- Add Unicode text, you can use this "نحن نحب ان نقوم ببناء Mautic"  
- Close the builder
- Go to the Advanced tab  
- Complete the ``From Name`` & ``From Address``, ``BCC``, ``Reply-To``, ``Add Attachment``, ``custom headers``, and Click on ``Auto Generate`` to create a text version of the Email  
- Save the Email and send a sample test, you should get everything you filled  
  
Create a Segment Email
======================

Go to Channels -> Emails -> New -> Segment Email -> Select Blank Theme  
Use the builder to do the following:  

- Embed an image  
- Add Unicode text, you can use this "نحن نحب ان نقوم ببناء Mautic"  
- Close the builder,  
- Go to the Advanced tab  
- Complete the ``From Name`` & ``From Address``, ``BCC``, ``Reply-To``, ``Add Attachment``, ``custom headers``, and Click on ``Auto Generate`` to create a text version of the Email  
- Save the Email and send a sample test, you should get everything you filled  
  
Send an individual Email
========================

Go to the Contacts section and select a Contact, then click Send an Email. You should be able to send an Email directly to that specific Contact's Email address.  
  
Send a Report Email
===================

Create a Report with any data and set it on a schedule, it should send an Email with the Report as an attachment  
  
Other Email features
====================

There are other places like Forget Password: they need to work as well. Please make sure you verify them. 
  
Testing transport callback  
**************************
  
Each transport should include a callback URL which Webhooks should be ``POSTed`` to, which marks Contacts who bounce as ``Do Not Contact``.

To test these callbacks you need to do the following:  
  
#. Configure an Email transport and make it the default transport  
#. Go to the URL on the following format ``/mailer/{transport}/callback`` 
#. You should get a message that says ``success`` and there should be a callback logic to handle the Webhook
