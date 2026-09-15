.. vale off

Point Insights
##############

.. vale on

.. vale off

Point Insights turn :doc:`Point Groups</points/point_groups>` into actionable knowledge about each Contact. An Insight compares the scores a Contact has accumulated across several Point Groups and writes the result to a Custom Field, so you can segment and personalize based on what each Contact cares about most.

.. vale on

For example, if you track engagement with different areas of your website using separate Point Groups, a Point Insight can identify the area each Contact is most active in and record that 'primary interest' on the Contact. You can then use that Custom Field to build Segments, show Dynamic Web Content, or tailor your Campaigns.

.. vale off

Managing Point Insights
=======================

.. vale on

To access Point Insights, go to **Points > Point Insights** in the main menu. The listing shows all your Insights, where you can change their active status, edit, clone, and delete them. To create one, click **+ New**.

A dedicated **Insights** permission in the Point Bundle controls access to Point Insights. Grant this permission to a Role to let its Users view and manage Point Insights.

.. vale off

Creating a Point Insight
========================

.. vale on

.. vale off

The **New Point Insight** form runs the **Set custom field to winning point group** action, which compares the Point Groups you select and writes the winner to a Custom Field. Configure these fields:

* **Name** - The name of the Insight as it appears in your list of Insights.
* **Description** - An optional description to help you identify the Insight.
* **Point Groups to Compare** - Choose one or more Point Groups whose scores you want to compare for each Contact.
* **Custom Field** - The Contact Custom Field that receives the result. Only activated text Custom Fields on Contacts appear in this list. For more information, see :doc:`Custom Fields</contacts/custom_fields>`.
* **Category** - Organize your Insights by Category. For more information, see :doc:`Categories</categories/categories-overview>`.
* **Active** - Only active Insights run. Set this to **No** to stop an Insight from evaluating Contacts.

.. vale on

Click **Save & Close** to store the Insight.

.. vale off

How Point Insights work
=======================

.. vale on

Mautic re-evaluates your active Point Insights automatically whenever a Contact's score changes in one of the Point Groups an Insight compares. You don't need to schedule anything or run a command.

When an Insight runs for a Contact, Mautic compares the Contact's scores across the selected Point Groups and finds the winner, the Point Group with the highest score. It then writes the winner's ID and name to the chosen Custom Field in the format ``ID (PointGroupName)``, for example ``12 (Umbrellas)``.

A few rules govern the outcome:

* If the Contact scores zero in every selected Point Group, Mautic writes nothing.
* When two or more Point Groups tie for the highest score, the Point Group with the lower ID wins. If the Custom Field already holds a value, Mautic keeps it rather than overwriting it on a tie.
* Mautic writes only one winner, even when several Point Groups share the highest score.

.. note::

   The winning value combines the Point Group's ID and name, such as ``12 (Umbrellas)``. Keep this format in mind when you build Segment filters or other automation that reads the Custom Field.
