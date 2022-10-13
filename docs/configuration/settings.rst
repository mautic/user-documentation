.. vale off

Mautic Configuration Settings
#############################

.. vale on

Proper configuration is important for branding, performance, and the user experience for your team as they do their jobs. 
These settings mostly don't need changing after initial configuration.


System settings
***************

General settings
================

.. image:: images/general-settings.png
  :width: 600
  :alt: Screenshot showing General Settings Configuration in Mautic

* **Site URL** - This is where Mautic is physically installed. Set the URL for this site here. Cronjobs needs this to correctly determine absolute URLs when generating links for Emails, etc. It 's also called Mautic's 'base URL'.

* **Mautic’s root URL** - When a User signs in to their Mautic instance, they go to ``mautic.example.com``. However, that Landing Page is also accessible to the public. If a Contact visits that address, they see the Mautic login page for that instance. 

  To brand that page, create a Mautic Landing page that you’d want to greet any Contacts who visit your root URL. Once you’ve done that, Users can sign in into Mautic by visiting ``mautic.example.com/s/login``.

* **404 page** - Select the Landing Page that you want to use as the 404 page. If you don’t want to use Mautic’s default 404 error page, create a custom Landing Page and select that page here. If you don’t select any page, Mautic uses the default error page.


* **Path to the cache, log, and images directory** - They're the file system path to where the cache, logs and images are saved.

System defaults
===============

.. image:: images/system-default-settings.png
  :width: 600
  :alt: Screenshot showing System defaults Settings Configuration in Mautic

* **Default item limit per page** - The number of Contacts, Campaigns, Emails, etc. which display on each page when you go to an item section. The default is ``10``.

* **Default timezone** - The User's default time zone, typically set to the time zone of the company headquarters. Time zones can be set for individual Users. The default is ``UTC``.

  For example: headquarters is in Boston and the default is set to US Eastern Time ``America/New York``. A User in San Francisco US Pacific Time may set ``America/Los Angeles`` to use Pacific Time in the User interface.

* **Default language** - The initial language assigned to Users. Individual Users may select their own settings. Mautic uses ``English - United States`` by default.

* **Cached data timeout (minutes)** - Mautic caches data to speed up page loads. Update this setting to change how long Mautic caches the data for. Mautic uses ``10 minutes`` as the default.

* **Date Range Filter Default** - Sets the default for how far back from the current date Mautic looks for data in Reports (including Campaign and Email snapshots charts on the item page). This setting allows you to control the default for how far back from the current date Mautic looks for data. If you’ve changed the setting on a Report, Mautic uses what you’ve entered. Mautic’s default value is ``1 Month``.
   
* **Default format for full dates, date only, short dates, and time only** - The default setting uses the standard US time format. The letters in the boxes are PHP code. See the :xref:`PHP manual for date functions to change formats<PHP manual for date functions>`.

CORS settings
=============

Cross-Origin Resource Sharing (CORS) enables data to pass between your website and Mautic.

.. image:: images/cors-settings.png
  :width: 600
  :alt: Screenshot showing CORS Settings Configuration in Mautic

* **Restrict Domains** - When set to No, any web page can pass information to Mautic. Select Yes to limit communication with your Mautic instance to websites listed in Valid Domains (strongly recommended).

* **Valid Domains** - A list of domains allowed to communicate with your Mautic instance. In the text box, list the exact URL of the top level domain you want to allow, one per line. For example: ``http://www.example.com`` tracks any activity on non-secure example.com pages, but ``https://www.example.com`` won’t because this is only tracking on a secure (https://) website.

.. note:: 

  In the Valid Domains field, don’t include a slash at the end. For example, use ``https://www.example.com`` instead of ``https://www.example.com/``.

Miscellaneous settings
======================

.. image:: images/miscellaneous-settings.png
  :width: 600
  :alt: Screenshot showing Miscellaneous Settings Configuration in Mautic

* **Trusted hosts** - To explicitly allow the hosts that can send requests to Mautic. You can use regular expression and separate multiple hosts with a comma. i.e ``.*\.?example.com$``. If left empty, Mautic will respond to all hosts.
  
* **Trusted proxies** - To configure the IP addresses that should be trusted as proxies. This setting is mandatory when using Mautic behind an SSL terminating proxy. Separate multiple IP addresses by a comma. i.e ``127.0.0.1, 10.0.0.0/8, fc00::/7``

* **IP lookup service** - By default, Mautic uses :xref:`MaxMind's` database to identify the city of a website visitor, based on the location of the Internet Service Provider (ISP) for their IP address.

* **IP lookup service authentication** - To use any IP lookup service which requires authentication, enter your credentials.
  
* **List of IPs not to track Contacts with** - To turn off tracking for particular IP addresses, enter the addresses, one per line. Mautic doesn’t recommend adding your office IP address. If you list your internal IP address, Mautic won’t track clicks, page hits, etc., from that IP, **including when you are testing functionality**.

* **List of known Bots** - Mautic has the functionality to identify and turn-off tracking for several known bots. To track activity from those bots, remove them from this list. To turn off tracking for other bots, add them here (one per line).
  
* **URL Shortener** - If you use a URL shortening service like bit.ly for links in SMS messages, enter your access token here.

.. note:: 

    For bit.ly, use the following URL structure: https://api-ssl.bitly.com/v3/shorten?access_token=[ACCESS_TOKEN]&format=txt&longUrl

* **Item max lock time** - When a User edits a Campaign, Email, Landing Page, etc., Mautic locks the item to prevent simultaneous edits by other Users. When the initial User saves and closes or cancels out, the item may remain locked for this period of time. The default is ``0 seconds``.

* **Translate page titles** - To translate page titles in the Contact activity history from non-Latin (non-English) characters to Latin characters (English).


Update settings
===============

.. image:: images/update-settings.png
  :width: 600
  :alt: Screenshot showing Update Settings Configuration in Mautic

* **Set the minimum stability level required for updates** - This allows you to receive notifications for early access releases. Always read the release notes before updating to an early access release. Set the minimum stability level required for updates. 

* **Update Mautic through Composer [BETA]**  - Set to 'Yes' if you update Mautic through Composer. This is a prerequisite if you want to install and update Plugins through the Marketplace. This becomes the default installation and update method in Mautic 5.

Theme settings
**************

.. image:: images/theme-settings.png
  :width: 600
  :alt: Screenshot showing Theme Settings Configuration in Mautic

* **Default Theme** - Applies a Theme to any Form which doesn’t have a Theme already applied. If you don’t have a Landing Page for your Preference Center, but have preference settings turned on in Email settings, Mautic creates a default Preference Center page using the Form styling from the Theme selected here.

API settings
************

.. image:: images/api-settings.png
  :width: 600
  :alt: Screenshot showing API Settings Configuration in Mautic

Full API documentation is available :xref:`Mautic developer API`.

* **API enabled** - Select Yes to pass data in and out of Mautic through the API.

* **Enable http basic auth?** - Enables basic authentication for Mautic’s API. It is recommended to only use this with secure sites (https).

* **Access token lifetime** - When authorizing a new application or Integration, this setting limits how long the access token is valid (in minutes). The default is ``60`` minutes.

  For example - You add a new Integration to your SaaS platform. Enter 30 here to limit the access token validity to ``30`` minutes. If you haven’t completed the authentication in that period of time, you must revalidate.

* **Refresh token lifetime** - When using OAuth 2.0, the lifetime of the refresh token used to request a new access token once expired. Once the refresh token expires, you must reauthorize. The default is ``14`` days.

Asset settings
**************

.. image:: images/assets-settings.png
  :width: 600
  :alt: Screenshot showing Assets Settings Configuration in Mautic

* **Path to the Asset directory** - Set the absolute path to where Assets are uploaded. In order to prevent the public from accessing Assets, use a directory outside of the public web root.

* **Maximum size (MB)** - Set the maximum size of uploaded Assets in Mb (Megabytes).

* **Allowed file extensions** - Extensions of files separated by commas. You can only upload files with the specified file extensions.

Campaign settings
*****************

.. image:: images/campaign-settings.png
  :width: 600
  :alt: Screenshot showing Campaign Settings Configuration in Mautic

* **Wait time before retrying a failed action** - If for any reason a Campaign action doesn't execute, this is the length of time Mautic waits before trying again.

* **Use date range for all views** - When viewing a Campaign, the date range of actions, conditions, decisions, and Contacts displayed in the tabs is based on this setting.

* **Use summary statistics** - Improves performance when viewing a Campaign with thousands of events per day by using summarized data. When you first turn on this setting you will need to run a :ref:`cron job<campaign cron jobs>` to summarize existing data.

Email settings
**************

Mail send settings
==================

.. image:: images/mail-send-settings.png
  :width: 600
  :alt: Screenshot showing Mail Send Settings Configuration in Mautic

* **Name to send mail as** - The default name Emails come from. This is typically something like ``{YourCompany Marketing Team}`` or ``{YourCompany}``.
  
* **Email address to send mail from** - The Email address for the name you’re sending mail from. The address displays in the ``From:`` field when your Contacts receive your Emails.

.. note::

  Ensure that you configure your sender domain, DKIM, bounce, and click tracking domains. For more information, see :ref:`Email<emails>` document.

* **Reply to address** -  To have Contacts reply to a different address than the specified From address, add the desired address here. This is the default ``reply-to`` address where messages are sent from Mautic unless it is overridden in an individual Email. If this field is blank, the address specified in **Email address to send mail** from is used. The ``reply-to`` setting is useful if your configured sender domain - which you use in the from address - contains a subdomain that doesn't have MX records or is otherwise an address that can't receive Emails.
  
* **Custom return path (bounce) address** - Set a custom return path/bounce email address for Emails sent from the system. Note that some mail transports, such as GMail, won't support this.

* **Mailer is owner** - If Contacts in Mautic have Owners, select Yes to use the Contact owner as the sender of Emails to any Contacts they’re listed as the owner for. 

.. note:: 

    Mailer is owner overrides any other name or Email to send mail from, including the default and individual Emails. Every Contact owner’s domain must have SPF and DKIM records. You can see this configuration for individual Emails, rather than globally.
    For more information see :doc:`Mailer is owner</channels/emails>`

* **Service to send mail through** - Select the Email service provider you use, and enter your credentials. 
  
Default frequency rule
======================

* **Do not contact more than <number> each <period>** - This limits the number of Marketing Messages a Contact receives in a certain period of time (day, week, month). Transactional messages don’t count towards this limit. You can adjust this at the individual Contact level, either manually or by Preference Center setting. 

.. note:: 

  More information is available in :doc:`Default Frequency Rule document</contacts/frequency_rules>`.

Monitored inbox settings
========================

.. image:: images/monitored-settings.png
  :width: 600
  :alt: Screenshot showing Monitored Settings Configuration in Mautic

* **Default Mailbox** - If your messages are going to bounce, this inbox is where you receive those bounce notifications.

* **Bounces** - A folder to monitor for new bounce messages or Emails.

* **Unsubscribe Requests** - A folder to monitor for new unsubscribe requests. 

* **Contact Replies** - Similar to the monitored inbox for bounces, this is the inbox Mautic checks for Contact replies. Using :ref:`Replies to Email<email settings>` decisions in any Campaign requires configuration. With ``Use custom connection settings?`` set to ``no``, Mautic checks the default mailbox. If set to ``yes``, you may track a different mailbox for replies.

Message settings
================

.. image:: images/message-settings.png
  :width: 600
  :alt: Screenshot showing Message Settings Configuration in Mautic

* **Text for the {webview_text} token** - The message indicating the reader can view the Email in their browser. The default is; ``Having trouble reading this Email? Click here``.
  
  To change the text, change the message between the ``<a href="|URL|">`` and ``</a>`` tags. Don't change the ``|URL|`` text, because that is a token, which creates a unique URL for each Contact.

* **Default Email signature** - The signature for your default Emails, which pairs with the name & Email address in the **Mail Send** settings.

* **Append tracking pixel into Email body?** - To track Email opens, select **Yes**. Select **No** to prevent tracking, reporting on, and using decisions based on Email opens.

* **Convert embed images to Base64** - Select **Yes** to display embedded images in Emails using embedded base64 code rather than as embedded images.

* **Disable trackable URLs** - Removes tracking from URLs in your Emails. Select Yes to prevent tracking, reporting on, and using decisions based on link clicks. Some Email service providers don’t like redirecting URLs. Using trackable URLs in your Emails may impact deliverability.
  
Unsubscribe settings
====================

.. image:: images/unsubscribe-settings.png
  :width: 600
  :alt: Screenshot showing Unsubscribe Settings Configuration in Mautic

* **Text for the {unsubscribe_text} token** -  Like the ``{webview_text}`` token, customize the **Unsubscribe** link. 

  For example - Edit between the ``<a href="|URL|">`` and ``</a>`` tags. Don’t change the URL as it's tokenized. If you add ``{unsubscribe_url}`` as a token in the Email, you won’t see this text.

* **Unsubscribed and resubscribed confirmation message** - If a Contact unsubscribes or resubscribes, this message displays on the page after the respective action. Don’t edit the ``|EMAIL|`` or the ``|URL|`` token in the ``<a href>`` tag.

* **Show Contact preference settings** - Select **Yes** to direct the unsubscribe link to your configured Preference enter. If you haven’t created a Preference Center, Mautic creates a default page based on the next 5 settings. The created page uses the default Theme for styling.

* **Show Contact Segment preferences** - Select **Yes** to allow a Contact to change which Segments they’re part of on the Preference Center page. Segments won’t display on the Preference Center page if they aren’t published and public.

* **Show Contact frequency preferences** - Select **Yes** to allow an individual to limit the number of Marketing Messages they receive on each Channel from the Preference Center.

* **Show pause Contact preferences** - Select **Yes** to allow Contacts to turn-off messages from your Mautic account to their Email address for a specified date range. This action isn’t a full unsubscribe, and at the end of the date range, the message is sent to that address once again.

* **Show Contact’s Categories** - If you have Categories set for Contacts, Campaigns, Emails, etc., select Yes to allow the Contact to opt out of the Categories they choose from the Preference Center page.

* **Show Contact’s preferred Channel option** - If you have multiple Channels available within your Mautic instance (Email, SMS, mobile push, web notifications, etc.), Contacts can choose their preferred Channel. This can be useful if you are using the Marketing Messages feature of Mautic. More information about the Preference Center is available :doc:`here</contacts/preference_center>`.


Form settings
*************

.. image:: images/form-settings.png
  :width: 600
  :alt: Screenshot showing Form Settings Configuration in Mautic

* **Do not accept submission from these domain names** - To block Contacts with specific Email domains from submitting your Forms, enter those domains in the dialog box. Select an option on each Form you want to apply this block to. You can restrict either specific Email aliases that belong to a domain or an entire domain. To block the entire domain, you can use wildcards (*).

Contact settings
****************

Contact merge settings
======================

.. image:: images/contact-merge-settings.png
  :width: 600
  :alt: Screenshot showing Contact Merge Settings Configuration in Mautic

* **Merge by unique fields with operator** - If you use more than one unique field identifiers then you can define which operator is used when deciding to merge. 

Contact list settings
=====================

.. image:: images/contact-list-settings.png
  :width: 600
  :alt: Screenshot showing Contact List Settings Configuration in Mautic

* **Columns** - Select from the left which fields appear on the Contact lists(when you go to Contacts in the Mautic and view the list).

The fields must be selected from the left, moved to the right, or removed from the right if you don't want them to appear in the list.


Import settings
===============

.. image:: images/import-settings.png
  :width: 600
  :alt: Screenshot showing Import Settings Configuration in Mautic

* **Automatically import in the background if the CSV has more rows than defined** - If there are more than the specified number of rows in an import file, the CSV will automatically be set to import in the background (which requires a :ref:`cron job<import contacts cron job>` to trigger). Set to 0 if you want to always import files in the background (recommended for performance optimization).
   
Segment settings
****************

.. image:: images/segment-settings.png
  :width: 600
  :alt: Screenshot showing Segment Settings Configuration in Mautic

* **Show warning if Segment hasn’t been rebuilt for X hours** - Segments are rebuilt when the :ref:`cron jobs<segment cron jobs>` are fired. If there is an error that prevents a Segment from rebuilding, Mautic displays a warning message. This field allows you to configure the allowable length of time between rebuilds, after which the warning message appears.

Company settings
****************

.. image:: images/company-merge-settings.png
  :width: 600
  :alt: Screenshot showing Company Merge Settings Configuration in Mautic

* **Merge by unique fields with operator** - If you use more than one unique field identifiers then you can define which operator is used when deciding to merge.

Notification settings
*********************

.. image:: images/campaign-notification-settings.png
  :width: 600
  :alt: Screenshot showing Campaign Notification Settings Configuration in Mautic

.. image:: images/webhook-notification-settings.png
  :width: 600
  :alt: Screenshot showing Webhook Notification Settings Configuration in Mautic

If a Campaign or Webhook is automatically unpublished because of a high volume of errors, Mautic sends a notification alerting Users.

* **Send notification to author** - Set this field to Yes to send an Email notification to the User who created the unpublished Campaign or Webhook. If the User is deleted, no notification is sent.

Landing page settings
*********************

.. image:: images/landing-page-settings.png
  :width: 600
  :alt: Screenshot showing Landing Page Settings Configuration in Mautic

* **Show Category in page URL?** - If you use Categories, the Landing Page’s associated Category displays in the URL if you select Yes.

* **Analytics script** - To track Landing Page visits and activity in other platforms such as Google Analytics, add those tracking scripts here.

Tracking settings
*****************

Mautic tracking settings
========================

.. image:: images/tracking-settings.png
  :width: 600
  :alt: Screenshot showing Tracking Settings Configuration in Mautic

* **Tracking code** - Insert this code on any page you would like to have tracked in Mautic before the ending ``</body>`` tag.

.. note:: 

    The default tracking code provided in a new instance updates and changes after you set up a new custom domain or when you make changes to an existing one. You must use the new tracking code that reflects the new or edited custom domain. If you are using the plugin for WordPress, Drupal, or Joomla, re-enter your account information in the plugin.

* **Identify visitor by tracking URL** - Select **Yes** to have Mautic begin tracking a Contact after the Contact clicks a link in an Email on a device where no cookie exists.

* **Anonymize IP** - Select **Yes** to not store full IP addresses for your visitors/Contacts. This setting aids customers in achieving GDPR compliance.

* **Identify visitors by IP** - Select **Yes** to use the IP address to identify Contacts. Unidentified visitors with the same IP address as an existing Contact will be tracked as that Contact. This may result in undesirable outcomes with large companies who use the same externally facing IP address.

* **Do Not Track 404 error for anonymous Contacts** - Select **Yes** to not track page hits on any 404 error page tracked by the tracking code. This option helps prevent filling your logs with hits from bots.
  
.. note:: 

  * The tracking code automatically detects the Preferred Timezone and Preferred Locale fields.
  * Pages including 4-byte UTF-8 characters, such as emojis and some Chinese or other non-Latin characters, in the page title or URL aren't tracked on a Contact’s activity history in Mautic. All Latin characters used in English and other western languages are of 1-byte and are tracked.

Facebook pixel
==============

.. image:: images/facebook-pixel-settings.png
  :width: 600
  :alt: Screenshot showing Facebook Pixel Settings Configuration in Mautic

* **Facebook Pixel ID** - Enter your Facebook Pixel ID and select the options you’d like to use the pixel for.

* **Enabled on your tracking page** - Select Yes to have Mautic append the Facebook Pixel to the Mautic tracking code to track pages where the tracking code exists.

* **Enabled on Mautic landing page** - Select Yes to have Mautic add the Facebook Pixel to Mautic landing pages.


Google Analytics
================

.. image:: images/google-analytics-settings.png
  :width: 600
  :alt: Screenshot showing Google Analytics Settings Configuration in Mautic

* **Google Analytics ID** - Enter your Google Analytics ID and select the options you’d like to use the pixel for.

* **Enabled on your tracking page** - Select Yes to have Mautic append the Google Analytics script to the Mautic tracking code to track pages where the tracking code exists.

* **Enabled on Mautic landing page** - Select Yes to have Mautic add the Google Analytics script to Mautic landing pages.

* **Enabled IP Anonymization** - For subscribers sensitive to GDPR or other data privacy laws and regulations, select Yes to anonymize the IP address of web visitors before sending it to Google Analytics.* 

Report settings
***************

.. image:: images/report-settings.png
  :width: 600
  :alt: Screenshot showing Report Settings Configuration in Mautic

* **Always quote data in CSV export** - Select Yes to wrap each Mautic field in double quotation marks when exported to a CSV file. For example: ``"First Name",”Last Name”,””, "some text"``.

Text message settings
*********************

.. image:: images/text-message-settings.png
  :width: 600
  :alt: Screenshot showing Text Message Settings Configuration in Mautic

* **Select default transport to use** - If you have configured a delivery service for SMS messages, select the service here to send messages. You must configure a delivery service before selecting it here.

User/Authentication settings
****************************

SAML/SSO settings
=================

.. image:: images/SMAL-settings.png
  :width: 600
  :alt: Screenshot showing SAML/SSO Settings Configuration in Mautic

* **Identity provider metadata file** - Upload the metadata XML file from your Identity Provider (IDP) here.

* **Default Role for created Users** - With :doc:`User Roles</users_roles/managing_roles>` created in the Roles section of the settings panel, you may select one of those Roles as the default for Users created using SSO. If empty, Mautic Users won’t be created using SSO. See Users and Roles.

Enter the names of the attributes the configured IDP uses for the Mautic User fields. Match the field name from your identity provider to the field name Mautic uses for User creation.

* **Email**
* **First name**
* **Last name**
* **Username**

Use a custom X.509 certificate and private key to secure communication between Mautic and the IDP. 

Upload your:

* **X.509 certificate**
* **Private key file**

Enter your **Private key encryption password**

Webhook settings
****************

.. image:: images/webhook-settings.png
  :width: 600
  :alt: Screenshot showing Webhook Settings Configuration in Mautic

* **Queue Mode** - Select how to process Webhook events. Process immediately executes the Webhook event as soon as it arrives. Queue mode only adds the event the queue and it must be processed by a :ref:`cron command<webhooks cron job>`, which is better for performance.

* **Order of the queued events** - If several events are queued in a Webhook, process the events in chronological or reverse chronological order.

Social settings
***************

.. image:: images/social-settings.png
  :width: 600
  :alt: Screenshot showing Social Settings Configuration in Mautic

* **Twitter Handle Field** - This field stores the Twitter username for Users added to Mautic through Social Monitoring.
