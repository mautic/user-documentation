.. vale off

Managing Contacts
#################

.. vale on

The manage Contacts page is the main interface through which you can view and interact with your Contacts - both visitors and standard Contacts.

.. vale off

Searching for Contacts
======================

.. vale on

A Segment can be searched using the box at the top of the list, or ordered by using the table headings by clicking on the heading you wish to sort the list by.

.. image:: images/contacts-search.jpeg
    :align: center
    :alt: Screenshot of Contact Search

|

The search box allows many different search types and follows the same search process and variables as found in all other search layouts.

.. vale off

Adding Contacts
===============

.. vale on

Quick add
*********

.. image:: images/contact-quick-add.png
    :align: center
    :alt: Screenshot of Contact Quick Add

|

Quick Add is a short Form with the fields you deem most important. To display fields in the **Quick Add** Form, make them available on short Forms in the custom fields configuration.

You can of course also add them through the New Contact Form and add much more detail, but for quick entry this is the easiest and fastest way to get the Contact into the system.

Add new
*******

.. image:: images/contact-manual-add.png
    :align: center
    :alt: Screenshot of Contact Manual Add

|

This opens the new Contact screen, where you can enter all the information you have about the Contact it also displays all published Contact fields when creating a new Contact. Use the tabs at the top to populate existing custom fields and social network profiles. 

.. note:: 

    Before you start adding Contacts, you may need to add :doc:`custom fields</contacts/custom_fields>` to capture all the information you require.

.. vale off

Importing Contacts
******************

.. vale on

Mautic offers the ability to import Contacts from other sources via CSV file - this is a great way to get up and running quickly if you need to import a lot of Contacts at once.

To import your CSV file:

1. :doc:`Create custom fields</contacts/custom_fields>` to match the fields in your list.

2. On the Contacts page, click **Import** next to **+New**.

3. Choose your UTF-8 encoded CSV file.

4. Adjust the value in **Delimiter**, **Enclosure**, and **Escape**, if necessary.

5. Click on **Upload**

When you click **Upload** you will have the opportunity to match the fields found in the CSV file to the fields that you have in Mautic, which allows the data to be correctly imported.

Following values results in **TRUE** when importing a ``Boolean`` value: ``1``, ``true``, ``on`` and ``yes``. Those values can be also capitalized and still taken as TRUE. **Any other value will be saved as FALSE**.

.. vale off

Exporting Contact lists
***********************

.. vale on

Mautic supports exporting Contact lists in CSV and Excel formats.

* **Export to CSV** - Sends a downloadable link containing the CSV file of the Contact list to the Email address on your Campaign Studio User profile.

.. note:: 

    This feature currently supports the export of a maximum of one million Contacts. After clicking the link in the Email, Users are redirected to Mautic instance login page. Users must login as the same authorized User that the Email was sent to and the file downloads after logging in. Once the file has been downloaded, Users can share the file with other non-Mautic Users.

* **Export to Excel** - Exports Contact lists to Excel directly from the system.

.. vale off

Editing Contacts
****************

.. vale on

To edit a Contact, click the name of the Contact (or the IP address if the visitor is anonymous) to open the Contact screen.

From this screen, you can view the recent events and any notes that have been made against the Contact.

To edit the Contact, click the '**edit**' button on the top-right menu.

Contact duplicates
******************

When Mautic tracks a Contact's actions (such as page hits or form submissions), Contacts are automatically merged based on their unique identifiers, which are:

* Email (*or any other contact field you mark as unique identifier*)

* Cookie

Mautic merges all actions to the Contact with the same cookie or creates a new cookie if it knows the unique cookie.

If a Contact sends a Form with an Email address, it merges the submission with the Contact having the same Email address. Even if the IP address or the cookie matches another Contact.

So, Mautic takes care of duplicate Contacts created by the event tracking. You can, however, still create a duplicate Contact via the Mautic administration. As of Mautic 2.1.0, you will be notified if there is already a Contact with the same unique identifier.

``AND`` is the default operator to find duplicates by unique identifiers. You can choose to use the ``OR`` operator in the Contact Merge Settings configuration.

.. image:: images/contact-duplicates-operator-configuration.png
    :align: center
    :alt: Screenshot of Contact duplicates

|

Batch actions
=============

To make updates to several Contacts at once, select those Contacts then click the green arrow at the top of the checkbox column. 

A modal window displays when you click one of the actions, with more configuration details. 
You can use this feature to quickly update large volumes of Contacts, but it might be better to use a Campaign action (for example: add all the Users you need to update into a segment and use a campaign to trigger the change) if you need to change more than a few hundred Contacts at a time.

.. image:: images/batch-actions.png
    :width: 200
    :align: center
    :alt: Screenshot of Contact Batch actions

|

The following batch actions are currently available:

* **Change Campaigns** - Allows you to add/remove the selected Contacts to/from Campaigns.

* **Change Categories** - Allows you to add/remove the selected Contacts to/from global Categories.

* **Change Channels** - Allows you to subscribe/unsubscribe the selected Contacts to/from communication Channels (Email, SMS, etc.) and also define frequency rules.

* **Change Owner** - Allows you to assign/unassign the selected Contacts to/from an owner (a Mautic User).

* **Change Segments** - Allows you to add/remove the selected Contacts to/from Segments. Note that if a Contact is added or removed to or from Segment manually, then Segment filters won't apply for them in that particular Segment.

* **Change Stages** - Allows you to add/remove the selected Contacts to/from a specified stage.

* **Export** - Allows you to export selected Contacts to CSV.

* **Set Do Not Contact (DNC)** - This action will set all selected Contacts as DNC for the Email Channel, and it allows you to provide a custom message as "reason" for why the Contacts were manually unsubscribed by a Mautic User.

* **Delete Selected (Batch Delete)** - The batch delete action in the Contact table allows the deletion of up to 100 Contacts at a time. This limit is there as a performance precaution, since deleting more Contacts at a time could cause performance degradation issues.

If you need to delete large numbers of Contacts, visit the :doc:`segment docs</segments/manage_segments>` which explains how to delete thousands of Contacts easily.

Contact details
===============

Each Contact has a detail page where you can see what Mautic knows about them.

Engagements chart
*****************

The Engagements line chart display how active the Contact was in the past 6 months. Engagement is any action the Contact made. For example: page hit, Form submission, Email open and so on. The chart displays also the Points which the Contact received.

Image
*****

* **Gravatar** - By default, Mautic pulls images from Gravatar. If there’s a :xref:`Gravatar` associated with the Contact’s Email address, Mautic will add the Gravatar photo to the contact record.

* **Custom** - To add a custom image file to a Contact, edit the Contact record and look for **Preferred profile image** under the image placeholder.

* **Social** - If you’ve enabled social Plugins and the record includes a social profile, you’ll see options to pull in profile images.

History
*******

Event history tracks any engagements between Mautic and a Contact. To find certain event types, search in the **Include events by source** text box. To exclude event types from the history while you’re looking at it, use **Exclude events by source**.

**Accessed from IP** - IP addresses which the Contact has opened or clicked Emails, visited your tracked pages, etc. from.

**Added through API** - Contact was created through API.

**Asset Downloaded** - Lists which Assets have been downloaded from your Landing Pages or website. Combining this information with other data can help with analyzing what led a Contact to download the Asset.

**Campaign Action Triggered** - Actions within Campaigns which have already happened.

**Campaign Event Scheduled** - Actions within Campaigns which take place in the future. Expand the details to see the event’s scheduled date and time. Click the clock icon to reschedule the event, or click **X** to cancel the event. A warning icon means an execution error on the first try caused the event to be rescheduled.

**Campaign Membership Change** - Changes to which Campaign a Contact is a part of.

**Contact Created** - This is the first event, showing the date and time the Contact first entered your database (either as a known or anonymous Contact).

**Contact Created By Source** - How the Contact was created

**Contact Identified** - The date and time the Contact was identified, moving the Contact from an anonymous to a known Contact.

**Contact Identified By Source** - How the Contact became identified.

**Do Not Contact** - The date and time the Contact unsubscribed from your messaging on a particular Channel.

**Dynamic Content sent** - A dynamic content slot is pushed to a Contact through a Campaign action.

**Email Failed** - If an Email is sent to an invalid or undeliverable Email address, it will be recorded as an Email failed event (with the internal name of the Email shown).

**Email Read** - The date and time when a specific Email was first read. If the Contact opens the Email multiple times, expanding details on the event type displays the additional opens.

.. note:: 

    To avoid performance issues, a limit of up to 1,000 **Email Read** event details is displayed.

**Email Replied** - If a Contact replies to an Email sent through Campaign Studio, the reply displays on the Contact record with this event type. To see this, you must have the **Contact Replies** inbox configured in **Settings** > **Configuration** > **Email Settings**.

**Email Sent** - When a specific Email is sent to a Contact, the internal name of the Email and the time & date of that send are listed.

**Form Submitted** - Along with showing the name and time and date of the Form submission, expanding the details on this event type shows the data collected on the Form and what page the Form was submitted on (referrer).

**Imported** - Dates, times, and file names for all CSV imports that included a Contact.

**Integration Sync Notice** - Information about connections with Integrations.

**Message Queue** - If a Contact’s frequency limits for a Channel have been reached and a message on that Channel triggers to send, a Message Queue event displays with the Channel and the ID for the message being queued. Expanding details displays:

* originally scheduled send date
* rescheduled send date
* current status

If the message is ``Pending``, clicking the X button cancels it.

**Page Hit** - Time and date of page visits, and the URL if it’s a tracked page on your site or the internal name of a Mautic Landing Page. You may view more information, if tracked, by expanding the details of this event type.

**Point Gained** The ID number of either:

* The global point action (in the **Points** section of Campaign Studio)

* The Campaign where the point action exists, along with the name of the global point action or the Campaign, the number of Points added or subtracted, and the time & date of the point change

**Segment Membership Change** - When Contacts are added or removed from Segments by any method, those changes display in the event history.

**Stage Changed** - If you are using **Stages** in Campaign Studio (not Stages as a custom field), changes to those Stages displays in the event history

**Text Message Received** - This event type is for SMS replies, if you are using SMS and have SMS reply tracking configured. Outbound SMS display as ``Campaign Event Scheduled`` or ``Campaign Action Triggered``.

**UTM Tags Recorded** - If you’re using UTM tags and record them from a Form submission, landing page hit, etc., they will be listed here. Expanding the details displays the recorded tags.

**Video View Event** - Details in this event type include the length of time a prospect watched the video, the percentage of the video watched, the page where the video displays (Referrer), and the URL of the video file.

Some Plugins contain specific events. The events display and are searchable after the Plugin is connected.

Notes
*****

Mautic can be used as a basic CRM. You or your teammates can write notes for a specific Contact. A note can be marked with a specific purpose; General, Email, Call, Meeting. It's also possible to define a date of a meeting or a call. If you do so, the note will also appear in the Mautic calendar.

Social
******

If a Contact record includes social profiles, you can see them in the **Social** tab. You must have the respective profiles set up in **Settings** > **Plugins**.

Integrations
************
If the contact exists in other tools and is connected through Plugin or API Integration, you’ll see those here. This helps identify where a Contact came from, or what other internal systems the Contact exists in.

Map
***

If Mautic knows the coordinates of the contact from a geolocation IP lookup service, it will display a fourth tab with a map so you can easily see where in the world the contact is located. If Mautic knows more locations for this contact as they travel, you'll see all the locations there. If Mautic doesn't know any location, the tab won't show up.

Change Contact Segments
***********************

.. image:: images/change-segments.jpeg
    :align: center
    :alt: Screenshot of change Segment

|

1. Click the **drop down box arrow** in the top right hand corner of the Contact detail. 

2. Select **Segments**. A modal box will show up where you'll see all the Segments. The green switch means that the Contact belongs to the Segment, the orange switch means the opposite. 

3. Click the **switch** to add/remove the Contact to/from the Segment.

Change Contact Campaigns
************************

1. Click the **drop down box arrow** in the top right hand corner of the Contact detail. 

2. Select **Campaigns**. A modal box will show up where you'll see all the Campaigns. The green switch means that the Contact belongs to the Campaign, the orange switch means the opposite. 

3. Click the **switch** to add/remove the Contact to/from the Campaign.

Merge two Contacts
*******************

If you have 2 Contacts in the Mautic database who are physically one person, you can merge them with the Merge feature. 

1. Click the drop down box arrow in the top right hand corner of the Contact detail, 

2. Select the Merge item, a modal box shows up. 

3. Search for the Contact you want to merge into the current Contact. The select box updates as you search. 

4. Select the right Contact and hit the **Merge** button.

.. vale off 

Send Email to Contact
*********************

.. vale on

This option enables Users to send an individual Email, either manually created with the builder or from a template Email. The **From Name** and **From Email Address** default to the User sending the individual message.

Contact tracking
================

The act of monitoring the traffic and activity of Contacts can sometimes be somewhat technical and frustrating to understand. Mautic makes this monitoring simple and easy to configure.

Website monitoring
******************

Monitoring all traffic on a website can be done by loading a JavaScript file (since Mautic 1.4) or adding a tracking pixel to the website. It's important to note that traffic won't be monitored from logged-in Mautic Users. To check that the JS/pixel is working, use an incognito or private browsing window or simply log-out of Mautic prior to testing.

Note that by default, Mautic won't track traffic originating from the same :xref:`private network` as itself, but this internal traffic can be configured to be tracked by setting the ``track_private_ip_ranges`` configuration option to ``true`` in ``app/config/local.php`` then and then :xref:`clearing the symfony cache`.

.. vale off

Tracking Script (``Javascript``)
********************************

.. vale on

JS tracking method was implemented in Mautic 1.4 and recommended as the primary way of website tracking. To implement it,

1. Go to Mautic > *Settings* (click the cogwheel at the top right) > *Configuration* > *Tracking Settings* to find the JS tracking code build for the Mautic instance
2. Insert the code before the ending ``<body/>`` tag of the website you want to track

Or, copy the code below and change the URL to your Mautic instance.

Mautic sets cookies with a lifetime of 1 year. Returning visitors are identified exclusively by the cookie. If no cookie exists yet, Mautic creates a new Contact and sets the cookie.

Make sure your website URL is entered in the CORS settings.

Note that if a browser is set to not accept cookies, this may result in each hit creating a new visitor.

.. code-block::

    <script>
        (function(w,d,t,u,n,a,m){w['MauticTrackingObject']=n;
            w[n]=w[n]||function(){(w[n].q=w[n].q||[]).push(arguments)},a=d.createElement(t),
            m=d.getElementsByTagName(t)[0];a.async=1;a.src=u;m.parentNode.insertBefore(a,m)
        })(window,document,'script','http(s)://yourmautic.com/mtc.js','mt');

        mt('send', 'pageview');
    </script>

*Don't forget to change the scheme (http(s)) either to http or https depending what scheme you use for your Mautic. Also, change [example.com] to the domain where your Mautic runs.*

The advantage of JS tracking is that the tracking request which can take quite long time to load is loaded asynchronously so it doesn't slow down the tracked website. JS also allows to track more information automatically:

* **Page Title** is the text written between ``</title>`` tags

* **Page Language** is the language defined in the browser.

* **Page Referrer** is the URL which the Contact came from to the current website.

* **Page URL** the URL of the current website.

mt() events
***********

mt() supports two callbacks, ``onload`` and ``onerror`` accepted as the fourth argument. The ``onload`` method will be executed once the tracking pixel has been loaded. If the pixel fails for whatever reason, ``onerror`` will be executed.

.. code-block:: 

     mt('send', 'pageview', {}, {
        onload: function() {
            redirect();
        },
        onerror: function() {
            redirect();
        }
    });

Local Contact cookie (first party cookie)
*****************************************

If CORS is configured to allow access from the domain where the mtc.js is embedded, a cookie will be placed on the same domain with the name of ``mtc_id``. This cookie will have the value of the ID for the currently tracked Contact but isn't used to track the Contact. This enables the server side software to access the Contact ID, and thus providing the ability to integrate with Mautic's REST API as well.

Valid Domains for CORS are expected to include the full domain name as well as the protocol. For example, ``http://example.com``, if you serve up secure and non-secure pages you should include both ``https://example.com`` as well ``http://example.com``. All subdomains will need to be listed as well for example, ``http://example.com`` and ``http://www.example.com`` , if your server allows this. If you would like to allow all subdomains, an asterisk can be used as a wildcard for example, ``http://*.example.com``.

Tracking of custom parameters
*****************************

You can attach custom parameters or overwrite the automatically generated parameters to the ``pageview`` action as you could to the tracking pixel query. To do that, update the last row of the JS code above like this:

``mt('send', 'pageview', {email: 'my@email.com', firstname: 'John'});``

This code sends all the automatic data to Mautic and adds also ``email`` and ``firstname``. The values of those fields must be generated by your system.

The tracking code also supports Company fields. Mautic can assign a Company to your tracked Contact based on Company name. Then you have to add the **company** or ``**companyname**`` parameter to the tracking code, along with other Companies fields (``companyemail``, ``companyaddress1``, ``companyaddress2``, ``companyphone``, ``companycity``, ``companystate``, ``companyzipcode``, ``companycountry``, ``companywebsite``, ``companynumber_of_employees``, ``companyfax``, ``companyannual_revenue``, ``companyindustry``, ``companyindustry``, ``companydescription``):

Contact tags and UTM codes can also be used.

``mt('send', 'pageview', {email: 'my@example.com', firstname: 'John', company: 'Mautic', companyemail: 'mautic@example.com', companydescription: 'description of company', companywebsite: 'https://example.com', tags: 'addThisTag,-removeThisTag', utm_campaign: 'Some Campaign'});``

Load Event
**********

As the JS tracking request is loaded asynchronously, you can ask JS to call a function when a request is loaded. To do that, define a ``onload`` function in options like this:

``mt('send', 'pageview', {email: 'my@example.com', firstname: 'John'}, {onload: function() { alert("Tracking request is loaded"); }});``

Tracking pixel
**************

It's recommended to use the tracking script with CORS properly configured instead of the tracking pixel. If that's not possible for whatever reason, the tracking pixel can be used. The tracking pixel uses third party cookies for tracking.

``http://example.com/mtracking.gif``

Tracking pixel query
********************

To get the most out of the tracking pixel, it's recommended that you pass information of the web request through the image URL.

Page information
----------------

Mautic currently supports ``page_url``, ``referrer``, ``language``, and ``page_title`` (note that the use of ``url`` and ``title`` are deprecated due to conflicts with contact fields).

UTM code
---------

Currently, ``utm_medium``, ``utm_source``, ``utm_campaign``, ``utm_content``, and ``utm_term`` are used to generate the content in a new timeline entry.

``utm_campaign`` will be used as the timeline entry's title.

``utm_medium`` values are mapped to the following Font Awesome classes:

All the UTM tags are available in the time entry, just by toggling the entry details button.

Please note that UTM tags are recorded only on a Form submission that contains the action "Record UTM Tags".

.. list-table:: 
   :widths: 100 100
   :header-rows: 1

   * - Values
     - Class
   * - social, ``socialmedia``
     - fa-share-alt if utm_source isn't available otherwise utm_source will be used as the class. For example, if utm_source is Twitter, fa-twitter will be used.
   * - email, newsletter
     - fa-envelope-o
   * - banner, ad
     - fa-bullseye
   * - ``cpc``
     - fa-money
   * - location
     - fa-map-marker
   * - ``device``
     - fa-tablet if utm_source isn't available otherwise utm_source will be used as the class. For example, if utm_source is Mobile, fa-mobile will be used.
  
All the UTM tags are available in the time entry, just by toggling the entry details button.

Please note that UTM tags are recorded only on a Form submission that contains the action "Record UTM Tags".

Contact fields
***************

You can also pass information specific to your Contact by setting Mautic Contact ``field(s)`` to be publicly editable. Note that values appended to the tracking pixel should be ``url`` encoded (%20 for spaces, %40 for @, etc).

Tags
****

The Contact's Tags can be changed by using the ``tags`` query parameter. Multiple Tags can be separated by comma. To remove a Tag, prefix it with a dash (minus sign).

For example, ``mtracking.gif?tags=ProductA``,-ProductB would add the ProductA Tag to the Contact and remove ProductB.

Embedding the pixel
*******************

If you are using a CMS, the easiest way is to let one of our plugins do this for you (see below). Note that the plugins may not support all contact fields, UTM codes or contact tags.

Here are a couple code snippets that may help as well:

HTML
****

.. code-block:: shell

    <img src="https://example.com/mtracking.gif?page_url=http%3a%2f%2fexample.com%2fyour-product-page&page_title=Some%20Cool%20Product&email=user%40theirdomain.com&tags=ProductA,-ProductB" style="display: none;"  alt="mautic is open source marketing automation" />

PHP
***

.. code-block:: php

    $d = urlencode(base64_encode(serialize(array(
    'page_url'   => 'https://' . $_SERVER[HTTP_HOST] . $_SERVER['REQUEST_URI'],
    'page_title' => $pageTitle,    // Use your website's means of retrieving the title or manually insert it
    'email' => $loggedInUsersEmail // Use your website's means of user management to retrieve the email
    ))));

    echo '<img src="https://example.com/mtracking.gif?d=' . $d . '" style="display: none;" />';

JavaScript
**********

.. code-block::

    <script>
        var mauticUrl = 'https://example.com';
        var src = mauticUrl + '/mtracking.gif?page_url=' + encodeURIComponent(window.location.href) + '&page_title=' + encodeURIComponent(document.title);
        var img = document.createElement('img');
        img.style.width  = '1px';
        img.style.height  = '1px';
        img.style.display = 'none';
        img.src = src;
        var body = document.getElementsByTagName('body')[0];
        body.appendChild(img);
    </script>

.. vale off

Available Plugins
*****************

.. vale on

Mautic makes this even easier by providing key integrations to many existing content management systems. You can download and use any of the following plugins to automatically add that tracking pixel to your website.

* ``Joomla``!
* Drupal
* WordPress
* TYPO3
* Concrete5
* Grav

These are just a few of the integrations already created by the Mautic community. More will be added in the future and developers are encouraged to submit their own integrations.

.. note:: 

    It is important to note that you are not limited by these plugins and you can place the tracking pixel directly on any HTML page for website tracking.

Identify visitors by tracking URL
*********************************

There is a configuration section for identifying visitors by tracking URL although this isn't recommended for use because it could be used to spoof tracking. If enabled, returning visitors will be identified by tracking URLs from channels (especially from emails) when no cookie exists yet.

.. note:: 

    The Email Contact field has to be marked as a unique identifier and publicly editable in your Mautic configuration.

How are Contacts tracked with the tracking script?
--------------------------------------------------

When using the tracking script, Contacts are tracked with third party cookies on the Mautic instance's domain and/or the browser's local storage.

Although the script writes first party cookies to the tracked domain expires with the session, they're NOT used for tracking. See "Local Contact cookie (first party cookie)."

When a Contact visits the website for the first time, the tracking script  makes a call to Mautic. Mauticchecks if the ``mautic_device_id`` cookie is set on it's domain. If it exists and if the device_id is found in Mautic's database, Mautic recognizes the request as the Contact associated with the given device.

Mautic returns the Contact ID, the device ID, and a legacy session ID this is the same as the device ID. These value are stored in the browser's local storage (if applicable) and written to the site's domain as a first party cookie (not used for tracking).

The next time the tracking script sends a request to Mautic, it uses the device ID from the browser's local storage to identify the tracked Contact. If that can't be found, Mautic defaults to the cookies stored on it's own domain so third party cookies to identify the Contact.

Mobile monitoring
*****************

The essence of monitoring what happens in an App is similar to monitoring what happens on a website. Mautic contains the building blocks needed for native (or pseudo-native) and HTML5-wrapper based Apps, regardless of platform.

In short, use named screen views (for example; main_screen) in your App as your page_url field in the tracker, and the contact's email as the unique identifier, see next section for detailed instructions.

Steps in Mautic
---------------

1. Make the email field publicly editable, this means that a call to the tracking GIF with the variable email gets properly recognized by Mautic.

2. Set up a Form, which will be the access point of your Campaign (for example; a new Contact email). Make this Form as simple as you can, as you will be POST-ing to it from your App. The typical Form URL you will POST to is ``https://example.com/form/submit?formId=<form_id>``

You can get the ID from the Mautic URL as you view / edit the Form in the Mautic interface (or in the forms tables, last column), and you can get the Form fields by looking at the HTML of the 'Manual Copy' of the HTML in the forms editing page.

3. Define in your Campaigns the screens you want to use as triggers (for example; 'cart_screen' etc.). Mautic isn't looking for a real URL in the Form 'http://' for page_url, any typical string would do. Like this: ``https://example.com/mtracking.gif?page_url=cart_screen&email=myemail@example.com``

In your App
***********

A best-in-class approach is to have a class (say 'Mautic') that handles all your tracking needs. For example, this sample method call would POST to the form with ID 3 - see previous section (note: for conciseness and ubiquity, these sample lines are written in JavaScript / ECMAScript-type language, use similar call in your mobile App language of choice).

``mautic.addContact("myemail@example.com",3)``

And then, to track individual user activity in the App, this sample call would make an ``HTTP`` request to the tracker:

``mautic.track("cart_screen", "myemail@example.com")``

Which isn'thing more than an ``HTTP`` request to this GET-formatted URL (as also shown in previous section):

``https://example.com/mtracking.gif?page_url=cart_screen&email=myemail@example.com``


.. important:: 

    Make sure in your App, that the above ``HTTP`` request is using a cookie (if possible, re-use the cookie from the ``mautic.addcontact`` POST request prior) AND that you reuse this cookie from one request to the next. This is how Mautic (and other tracking software) knows that it's really the same user. If you can't do this, you may run into the (unlikely but possible) case where you have multiple contacts from the same IP address and Mautic will merge them all into a single contact as it can't tell who is who without a cookie.

.. vale off

Google Analytics and acebook Pixel tracking support
****************************************************

.. vale on

Mautic supports contact tracking using Google Analytics and the Facebook pixel. Go to Mautic **Configuration** > **Tracking Settings** and set up:

* **Google Analytics ID**
* **Facebook Pixel ID**

Tracking codes support also Google Analytics USERID and Facebook Pixel Advanced Matching.

Campaign action Send tracking event
***********************************

There is a campaign action which allows you to send a custom event to Google Analytics or Facebook Pixel - it depends on there being a 'Visits a page' decision immediately before it in the campaign workflow.

How to test Google Analytics tracking code and campaign action
--------------------------------------------------------------

* Install **Tag Assistant** and enable recording on your website
* Create campaign with the 'Visits a page' decision and 'Send tracking event' action
* Test it and check in the Tag Assistant debug window that you see one ``Pageview`` request and one event

.. image:: images/google-analytics-tag-assistent.png
    :align: center
    :alt: Screenshot of Google Analytics

|

How to test Facebook Pixel tracking code and campaign action
------------------------------------------------------------

* Install the Facebook Pixel Helper
* Create campaign with a 'Visits a page' decision and a 'Send tracking event' action
* Test it and check in the Facebook Pixel Helper debug window that you see one ``Pageview`` and one custom event action

.. image:: images/facebook-pixel-helper.png
    :align: center
    :alt: Screenshot of Facebook pixel

|

Events can be used for Remarketing with Analytics and Remarketing for Facebook Ads.

Other Online Monitoring
***********************

There are several other ways to monitor contact activity and attach points to those activities. Website monitoring is only one way to track contacts. Other contact monitoring activities can consist of forum posts, chat room messages, mailing list discussion posts, GitHub/Bitbucket messages, code submissions, social media posts, and a myriad of other options.

Troubleshooting
***************

If the tracking doesn't work, take a look at the troubleshooting section.

Cookies used by Mautic
***********************

This is a list of cookies potentially used by Mautic when tracking Contacts. Note that if using the tracking script, the browser's local storage is used to store a device ID used to track the Contact.

Third party cookies
--------------------


First party 
-------------