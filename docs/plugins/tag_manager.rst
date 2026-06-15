.. vale off

Tag Manager
###########

.. vale on

Tags help you organize and categorize your Contacts. Unlike Segments, Tags are labels you manually assign to Contacts. You can add or remove them anytime. Use Tags to mark Contacts based on characteristics, behaviors, or other criteria that matter to your marketing.

The Tag Manager is primarily for reviewing existing Tags in your Mautic instance and deleting Tags you no longer need. You can create Tags directly within any Tag input field. This includes editing a Contact, configuring a Campaign action, or setting up a Form action. Type a Tag name and press Enter. If the Tag already exists, you can select it. If it doesn't exist, Mautic creates it automatically.

.. vale off

For details on Tag creation and other ways to work with Tags, see :doc:`/contacts/tags`.

.. vale on

.. vale off

Accessing the Tag Manager
*************************

.. vale on

.. vale off

Go to **Contacts > Manage Tags** to open the Tag Manager list page. This page shows all existing Tags with their names, descriptions, and Contact counts.

.. vale on

.. vale off

Creating a Tag in the Tag Manager
*********************************

.. vale on

You can also create Tags directly in the Tag Manager:

#. Click the **New** button in the top right corner.
#. Enter a **Name** for the Tag. This is the only required field.
#. Optionally, add a **Description** to provide more context about when to use this Tag.
#. Click **Save & Close** to create the Tag.

This approach is useful when you want to add descriptions to Tags before assigning them, or when planning your Tag structure in advance.

.. vale off

Editing a Tag
*************

.. vale on

#. Click on the Tag name in the list to open it.
#. Modify the name or description as needed.
#. Click **Save & Close** to apply changes.

.. vale off

Deleting a Tag
**************

.. vale on

#. Select the checkbox next to the Tag you want to delete.
#. Click the dropdown arrow next to the **New** button and select **Delete Selected**.
#. Confirm the deletion.

.. note::

   Deleting a Tag doesn't delete the Contacts associated with it. The Tag is simply removed from those Contacts.

.. vale off

Searching Tags
**************

.. vale on

Use the search box at the top of the Tag Manager list to find specific Tags. Mautic searches both the Tag name and description. This helps you find Tags even if you only remember part of the description.

For example, you have a Tag named 'VIP' with the description "High-value customers who purchased premium plans." You can find it by searching for 'VIP', 'premium', or 'high-value'.

.. vale off

Assigning Tags to Contacts
**************************

.. vale on

You can assign Tags to Contacts in several ways:

.. vale off

* **Contact detail page** - Open a Contact, go to the **Tags** tab, and add or remove Tags directly.
* **Batch actions** - Select multiple Contacts in the Contact list, then use the bulk action menu to add or remove Tags.
* **Campaign actions** - Use the **Modify Contact Tags** action in Campaigns to automatically add or remove Tags based on Contact behavior.
* **Form actions** - Configure a Form to add Tags to Contacts when they submit it.
* **Tracking pixel** - Pass Tags via the tracking URL using the ``tags`` parameter.

.. vale on

For more information on using Tags with the tracking pixel, see :ref:`Tracking pixel query <tracking pixel query Tags>` section.
