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

This opens the new Contact screen, where you can enter all the information you have about the contact it also displays all published Contact fields when creating a new Contact. Use the tabs at the top to populate existing custom fields and social network profiles. 

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
-------------

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



Contact tracking
===============

