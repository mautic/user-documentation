.. vale off

Company Segments
################

.. vale on

Company Segments group Companies based on shared attributes or criteria, enabling targeted Account-Based Marketing - ABM - strategies. Use Company Segments to organize Companies for Campaign targeting, reporting, and bulk operations.

.. note::

   Company Segments are distinct from Contact Segments. While Contact Segments group individual Contacts, Company Segments group entire Companies. This lets you target organizations rather than individuals in your marketing automation.

.. vale off

Creating a Company Segment
**************************

.. vale on

#. Navigate to **Companies > Company Segments** in the menu.
#. Click the **New** button to create a new Company Segment.
#. In the **Details** tab, configure the following:

   * **Name** - The internal name for your Company Segment.

   * **Public name** - An optional alternate name visible in certain interfaces.

   * **Description** - A description of the Segment's purpose.

   * **Active** - Toggle to make the Segment available for use. Inactive Segments aren't available as Campaign sources or in other areas of Mautic.

.. vale off

Company Segment filters
***********************

.. vale on

Use filters to create dynamic Company Segments that automatically include or exclude Companies based on field values. Mautic evaluates Companies against these filters during Segment rebuilds and updates membership accordingly.

Configuring filters
===================

#. In the Company Segment editor, click the **Filters** tab.
#. Select a Company field from the dropdown to filter by.
#. Choose an operator and specify the filter value.
#. Add additional filters using **And** or **Or** logic:

   * **And** - Companies must match all connected filters.
   * **Or** - Creates a new filter group where Companies matching any group are included.

#. Click **Save and close** to save the Segment.

Available filter operators
==========================

The available operators depend on the field type:

* **Equals / Not equal** - Exact match or exclusion of a value.
* **Empty / Not empty** - Whether the field has a value.
* **Like / Not like** - Partial string matching with wildcards.
* **Contains / Starts with / Ends with** - String position matching.
* **Greater than / Less than** - Numeric or date comparisons.
* **Regexp / Not regexp** - Regular expression pattern matching.

.. note::

   Companies automatically move into or out of dynamic Segments when their field values change and the Segment cron job runs. See :ref:`Company Segment cron job<company segment cron job>` for configuration details.

.. vale off

Static Company Segments
***********************

.. vale on

Static Company Segments don't use filters. Instead, you manually manage membership through the methods below.

.. vale off

Adding Companies manually
=========================

From the Company record
-----------------------

.. vale on

#. Open the Company you want to add to a Segment.
#. Click the dropdown arrow next to **Edit** and select **Segments**.
#. Select the Company Segments to add the Company to.
#. Click **Save**.

From the Company list view
--------------------------

#. In the Company list, select the checkboxes next to the Companies you want to modify.
#. Click the green arrow that appears at the top of the column.
#. Select **Change Segments**.
#. Choose the Segments to add or remove Companies from.
#. Click **Save**.

.. vale off

Using Campaign actions
======================

.. vale on

You can add or remove Companies from Company Segments as part of a Campaign workflow using the **Modify Company's Segments** action. For more information, see :ref:`Campaign Company Segment actions<campaign company segment actions>`.

.. vale off

Viewing Company Segment membership
**********************************

.. vale on

When viewing all Company Segments, the **# Companies** column displays the number of Companies in each Segment. During rebuilds, this column shows **Building** until the process completes.

To view Companies in a Segment:

#. Navigate to **Companies > Company Segments**.
#. Click the Company count link for the Segment you want to view.

This opens the Company list filtered to show only Companies in that Segment.

.. vale off

Searching Companies by Segment
******************************

.. vale on

Filter the Company list by Segment membership using the search syntax:

.. code-block::

   segment:{segment-alias}

Replace ``{segment-alias}`` with the alias of your Company Segment. The alias is automatically generated from the Segment name or can be set manually.

.. vale off

Managing Company Segments
*************************

.. vale on

Editing a Company Segment
=========================

#. Navigate to **Companies > Company Segments**.
#. Click the Segment name or select **Edit** from the dropdown menu.
#. Make your changes and click **Save and close**.

Cloning a Company Segment
=========================

#. Navigate to **Companies > Company Segments**.
#. Click the dropdown arrow next to the Segment.
#. Select **Clone**.

Mautic creates a copy of the Segment with the same filters and settings.

Publishing and unpublishing
===========================

Control Segment availability by publishing or unpublishing:

#. In the Company Segment list, click the colored status indicator - green for published, red for unpublished.
#. Alternatively, edit the Segment and toggle the **Published** setting.

Unpublished Segments aren't available for use in Campaigns or other features.

Deleting Company Segments
=========================

#. Navigate to **Companies > Company Segments**.
#. Select the checkbox next to the Segment or Segments to delete.
#. Click the dropdown arrow and select **Delete**.
#. Confirm the deletion.

.. warning::

   Mautic prevents deletion of Company Segments that are referenced by filters in other Segments. Remove the dependency before deleting.

.. _company Segment Cron job:

.. vale off

Company Segment Cron job
************************

.. vale on

To keep Company Segments current, configure a cron job to run the rebuild command:

.. code-block:: php

   php /path/to/mautic/bin/console mautic:company-segments:update

This command evaluates all Companies against Company Segment filters and updates membership accordingly.

**Available options:**

* ``--batch-limit=X`` - Number of Companies to process per batch. Default is 300.

* ``--max-companies=X`` - Maximum number of Companies to process per execution.

* ``--segment-id=X`` - Process only a specific Company Segment.

Run this command regularly, for example every 15 minutes, staggered with other cron jobs to distribute server load.

.. code-block::

   0,15,30,45 * * * * php /path/to/mautic/bin/console mautic:segments:update
   2,17,32,47 * * * * php /path/to/mautic/bin/console mautic:company-segments:update
   5,20,35,50 * * * * php /path/to/mautic/bin/console mautic:campaigns:update

