.. vale off

Tags
####

.. vale on

Tags are flexible labels you can add to or remove from Contacts at any time. Unlike Segments, which group Contacts based on filters, Tags let you manually categorize Contacts for quick identification, filtering, and triggering Campaign actions.

Managing Tags
*************

Creating Tags
=============

Tags don't require pre-creation. You can create new Tags directly when applying them to Contacts - type a new Tag name in any Tag field, and Mautic creates it automatically.

To view existing Tags, navigate to a Contact's record and look at the Tags field, or use the Tag filter when searching Contacts.

Adding Tags to Contacts
=======================

Manual assignment
-----------------

1. Navigate to the Contact's record.
2. Click **Edit** to open the Contact edit form.
3. In the **Tags** field, start typing to search existing Tags or enter a new Tag name.
4. Press Enter or select from the dropdown to apply the Tag.
5. Click **Save** to save the changes.

Batch updates
-------------

1. Navigate to the **Contacts** section.
2. Use filters to find the Contacts you want to update.
3. Select the checkboxes next to the desired Contacts.
4. Click the green arrow at the top of the column.
5. Select **Change Tags** from the dropdown menu.
6. Choose Tags to add or remove.
7. Click **Save**.

Using the tracking script
-------------------------

You can also add or remove Tags from Contacts using the tracking script or tracking pixel. For more information, see :ref:`Tags <contacts/manage_contacts:Tags>` in the Contact Monitoring documentation.

Using Tags in Campaigns
***********************

.. vale off

Modify Contact's Tags action
============================

.. vale on

Use the **Modify Contact's Tags** action to add or remove Tags from Contacts as they progress through a Campaign.

1. In the Campaign Builder, click the connector below an event.
2. Select **Action**.
3. Choose **Modify Contact's Tags**.
4. Select Tags to add or remove.
5. Click **Add** to save the action.

This action is useful for marking Contacts who have reached certain stages, completed specific actions, or require follow-up.

Contact Tags condition
======================

Use the **Contact Tags** condition to create different Campaign paths based on whether a Contact has specific Tags.

1. In the Campaign Builder, click the connector below an event.
2. Select **Condition**.
3. Choose **Contact Tags**.
4. Configure which Tags to check for.
5. Click **Add** to save the condition.

Contacts with matching Tags follow the **Yes** path, while others follow the **No** path.

Using Tags in Forms
*******************

You can automatically add or remove Tags when a Contact submits a Form.

1. Navigate to **Components > Forms** and edit a Form.
2. In the Form builder, go to the **Actions** tab.
3. Click **Add new action** and select **Modify Contact's Tags**.
4. Select Tags to add or remove upon Form submission.
5. Click **Add** to save the action.

This is helpful for tagging Contacts based on which Forms they complete, such as marking someone as interested in a specific product.

Using Tags in Segments
**********************

You can use Tags as filters when building Segments:

1. Navigate to **Segments** and create or edit a Segment.
2. Go to the **Filters** tab.
3. Add a filter and select **Tags** from the Contact field options.
4. Choose the operator - for example, **Includes**, **Excludes**, **Empty**, or **Not empty**.
5. Select the Tag or Tags to filter by.
6. Click **Save** to apply the filter.

This creates Segments of Contacts who have - or don't have - specific Tags applied.

Searching Contacts by Tags
**************************

You can search for Contacts with specific Tags using the search bar:

- To find Contacts with a specific Tag, use: ``tag:tagname``
- To find Contacts without a specific Tag, use: ``!tag:tagname``

Replace ``tagname`` with the actual name of the Tag. If the Tag name contains spaces, wrap it in quotes: ``tag:"tag name"``

Best practices
**************

- **Use consistent naming conventions** - Establish naming rules to avoid duplicates like "Webinar" and "webinar-attendee" for similar purposes.
- **Document your Tag taxonomy** - Keep a record of what each Tag means and when to use it.
- **Avoid over-tagging** - Too many Tags can become difficult to manage. Consider whether a Segment or Custom Field might be more appropriate.
- **Review Tags regularly** - Periodically audit your Tags to remove outdated or unused ones.
- **Combine with Segments** - Use Tags for quick manual labeling and Segments for dynamic, filter-based grouping.
