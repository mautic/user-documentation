.. vale off

Tags
####

.. vale on

Tags are flexible labels you can add to or remove from Contacts at any time. Unlike Segments, which group Contacts based on filters, Tags let you manually categorize Contacts for quick identification, filtering, and triggering Campaign actions.

.. vale off

Managing Tags
*************

.. vale on

.. vale off

Creating Tags
=============

.. vale on

Tags don't require pre-creation. You can create new Tags directly when applying them to Contacts - type a new Tag name in any Tag field, and Mautic creates it automatically.

To view existing Tags, navigate to a Contact's record and look at the Tags field, or use the Tag filter when searching Contacts.

.. vale off

Adding Tags to Contacts
=======================

.. vale on

Manual assignment
-----------------

.. vale off

#. Navigate to the Contact's record.
#. Click **Edit** to open the Contact edit form.
#. In the **Tags** field, start typing to search existing Tags or enter a new Tag name.
#. Press Enter or select from the dropdown to apply the Tag.
#. Click **Save** to save the changes.

.. vale on

Batch updates
-------------

#. Navigate to the **Contacts** section.
#. Use filters to find the Contacts you want to update.
#. Select the checkboxes next to the desired Contacts. This opens a blue banner at the top of the table.
#. Click the three dots in the blue banner to open the **Options** list.
#. Select **Change Tags** from the **Options** list.
#. In the **Add tags** or **Remove tags** fields, select existing Tags from the dropdown, or type a new Tag name and press Enter to create it.
#. Click **Save**.

Using the tracking script
-------------------------

You can also add or remove Tags from Contacts using the tracking script or tracking pixel. For more information, see :ref:`Contact tracking` section.

Viewing and removing Tags on a Contact
**************************************

.. vale off

A Contact's Tags appear on the Contact's detail page in a dedicated Tags tile. If a Contact has 8 or fewer Tags, the tile shows all of them. If a Contact has more than 8, the tile shows the first 8 and becomes expandable - use the control on the tile to view the remaining Tags.

To remove a Tag from the Contact's detail page, click the **x** icon on the Tag. Mautic displays a confirmation dialog asking 'Are you sure you want to remove this tag from the contact?'. Click **Confirm** to remove the Tag, or **Cancel** to keep it. This confirmation step prevents you from accidentally removing a Tag with a single click.

.. vale on

.. vale off

Using Tags in Campaigns
***********************

.. vale on

.. vale off

Modify Contact's Tags action
============================

.. vale on

Use the **Modify Contact's Tags** action to add or remove Tags from Contacts as they progress through a Campaign.

#. In the Campaign Builder, click the connector below an event.
#. Select **Action**.
#. Choose **Modify Contact's Tags**.
#. Select Tags to add or remove.
#. Click **Add** to save the action.

This action is useful for marking Contacts who have reached certain Stages, completed specific Actions, or require follow-up.

.. vale off

Contact Tags condition
======================

.. vale on

Use the **Contact Tags** condition to create different Campaign paths based on whether a Contact has specific Tags.

#. In the Campaign Builder, click the connector below an event.
#. Select **Condition**.
#. Choose **Contact Tags**.
#. Configure which Tags to match.
#. Click **Add** to save the condition.

Contacts with matching Tags follow the **Yes** path, while others follow the **No** path.

.. vale off

Using Tags in Forms
*******************

.. vale on

You can automatically add or remove Tags when a Contact submits a Form.

#. Navigate to **Components** > **Forms** and edit a Form.
#. In the Form builder, go to the **Actions** tab.
#. Click **Add new action** and select **Modify Contact's Tags**.
#. Select Tags to add or remove upon Form submission.
#. Click **Add** to save the action.

This is helpful for tagging Contacts based on which Forms they complete, such as marking someone as interested in a specific product.

.. vale off

Using Tags in Segments
**********************

.. vale on

You can use Tags as filters when building Segments:

#. Navigate to **Segments** and create or edit a Segment.
#. Go to the **Filters** tab.
#. Add a filter and select **Tags** from the Contact field options.
#. Choose the operator. For example, **Includes**, **Excludes**, **Empty**, or **Not empty**.
#. Select the Tag or Tags to filter by.
#. Click **Save** to apply the filter.

This creates Segments of Contacts who have - or don't have - specific Tags applied.

.. vale off

Searching Contacts by Tags
**************************

.. vale on

You can search for Contacts with specific Tags using the search bar:

* To find Contacts with a specific Tag, use ``tag:tagname``
* To find Contacts without a specific Tag, use ``!tag:tagname``

Replace ``tagname`` with the actual name of the Tag. If the Tag name contains spaces, wrap it in quotes, for example, ``tag:"tag name"``.

Best practices
**************

* **Use consistent naming conventions** - Establish naming rules to avoid duplicates, such as 'Webinar' and 'webinar-attendee', for similar purposes.
* **Document your Tag taxonomy** - Keep a record of what each Tag means and when to use it.
* **Avoid over-tagging** - Too many Tags can become difficult to manage. Consider whether a Segment or Custom Field might be more appropriate.
* **Review Tags regularly** - Periodically audit your Tags to remove outdated or unused ones.
* **Combine with Segments** - Use Tags for quick manual labeling and Segments for dynamic, filter-based grouping.
