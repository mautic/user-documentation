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

Quick Add
*********

.. vale on

.. image:: images/contact-quick-add.png
    :align: center
    :alt: Screenshot of Contact Quick Add

|

Quick Add is a short Form with the fields you deem most important. To display fields in the **Quick Add** Form, make them available on short Forms in the custom fields configuration.

You can of course also add them through the New Contact Form and add much more detail, but for quick entry this is the easiest and fastest way to get the Contact into the system.

.. vale off

Add New
*******

.. vale on

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

Exporting Contact lists
***********************

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

If a Contact sends a Form with an Email address, it will merge the submission with the Contact having the same Email address. Even if the IP address or the cookie matches another Contact.

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
You can use this feature to quickly update large volumes of Contacts, but it might be better to use a Campaign action (e.g. add all the users you need to update into a segment and use a campaign to trigger the change) if you need to change more than a few hundred Contacts at a time.

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

* **Delete Selected (Batch Delete)** - The batch delete action in the Contact table allows the deletion of up to 100 Contacts at a time. This limit is there as a performance precaution, since deleting more Contacts at a time could cause performance degredation issues.

If you need to delete large numbers of Contacts, visit the :doc:`segment docs</segments/manage_segments>` which explains how to delete thousands of Contacts easily.

Contact details
===============

Each Contact has a detail page where you can see what Mautic knows about them.

Engagements/Points chart
************************

The Engagements line chart display how active the Contact was in the past 6 months. Engagement is any action the Contact made. E.g. page hit, Form submission, Email open and so on. The chart displays also the Points which the Contact received.

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

2. Select the Merge item, a modal box will show up. 

3. Search for the Contact you want to merge into the current Contact. The select box will update as you search. 

4. Select the right Contact and hit the **Merge** button.

Send Email to Contact
*********************

This option enables Users to send an individual Email, either manually created with the builder or from a template Email. The **From Name** and **From Email Address** default to the User sending the individual message.

Contact tracking
===============

Website Monitoring
-------------