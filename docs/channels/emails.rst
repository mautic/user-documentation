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

Mautic initiates the sending of these emails with a :doc:`/set_up/cron_jobs` - see section on Send Scheduled Broadcasts (e.g. segment emails) for more details on this.

Email formats
*************

In Mautic, it's possible to create Emails in both full HTML as well as basic text format - delivered as necessary to Contacts based on what their client supports. This is an important part of creating a strong relationship with Contacts by providing relevant information in the correct format.

Email delivery
**************

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

Email fields
************

You have access to any number of Contact fields to use in your Emails. These can be easily placed within your Emails and are  automatically replaced with the appropriate text once sent.

Check the :doc:`/setup/variables` page for a list of all the available default fields.

Tracking Opened Emails
**********************

Mautic automatically tags each Email with a tracking pixel image. This allows Mautic to track when a Contact opens the Email and execute actions accordingly. Note that there are limitations to this technology - the Contact's email client supporting HTML and auto-loading of images, and not blocking the loading of pixels. If the email client doesn't load the image, there's no way for Mautic to know the opened status of the Email.

By default, Mautic adds the tracking pixel image at the end of the message, just before the ``</body>`` tag. If needed, one could use the ``{tracking_pixel}`` variable within the body content token to have it placed elsewhere.

Tracking links in Emails
==================================

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
