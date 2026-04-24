.. vale off

Tag Manager
###########

.. vale on

Tags help you organize and categorize your Contacts. Unlike Segments, Tags are labels you manually assign to Contacts. You can add or remove them anytime. Use Tags to mark Contacts based on characteristics, behaviors, or other criteria that matter to your marketing.

Accessing the Tag Manager
*************************

Go to **Contacts** > **Manage Tags** to open the Tag Manager list page. This page shows all existing Tags with their names, descriptions, and Contact counts.

Creating a Tag
**************

#. Click the **New** button in the top right corner.
#. Enter a **Name** for the Tag. This is the only required field.
#. Optionally, add a **Description** to provide more context about when to use this Tag.
#. Click **Save & Close** to create the Tag.

Editing a Tag
*************

#. Click on the Tag name in the list to open it.
#. Modify the name or description as needed.
#. Click **Save & Close** to apply changes.

Deleting a Tag
**************

#. Select the checkbox next to the Tag you want to delete.
#. Click the dropdown arrow next to the **New** button and select **Delete Selected**.
#. Confirm the deletion.

.. note::

   Deleting a Tag doesn't delete the Contacts associated with it. The Tag is simply removed from those Contacts.

Searching Tags
**************

Use the search box at the top of the Tag Manager list to find specific Tags. Mautic searches both the Tag name and description. This helps you find Tags even if you only remember part of the description.

For example, say you have a Tag named 'VIP' with the description 'High-value customers who purchased premium plans'. You can find it by searching for 'VIP', 'premium', or 'high-value'.

Assigning Tags to Contacts
**************************

You can assign Tags to Contacts in several ways:

* **Contact detail page** - Open a Contact, go to the 'Tags' tab, and add or remove Tags directly.
* **Batch actions** - Select multiple Contacts in the Contact list, then use the bulk action menu to add or remove Tags.
* **Campaign actions** - Use the 'Modify Contact Tags' action in Campaigns to automatically add or remove Tags based on Contact behavior.
* **Form actions** - Configure a Form to add Tags to Contacts when they submit it.
* **Tracking pixel** - Pass Tags via the tracking URL using the ``tags`` parameter.

For more information on using Tags with the tracking pixel, see :ref:`contacts/manage_contacts:Tags`.
