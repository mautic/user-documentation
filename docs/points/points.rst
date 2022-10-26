.. vale off

Points
######

.. vale on

Points provide a way for properly weighing Contacts. These Points have both triggers and actions. Each term is properly defined and a thorough understanding of how Points function ensures that your overall marketing automation process is successful.

Point actions
*************

Point actions are those times when a Contact receives a change in their point total. These actions can be either positive or negative point changes and are based on a particular action as you determine.

To add a new action:

1. Click **Points > Point Actions > + New** (top right corner).

.. image:: images/points-action.png
    :alt: Screenshot of Points action

2. In the main panel, there are four boxes for key information. Enter the appropriate information.

   * **Name** - The name of your action. This is how the action displays in your list of actions, so choose an identifiable name.

   * **Description** - Add a description to help you find certain actions. There may be more actions which are similar or more in-depth.

   * **Change Points (+/-)** - The value change to set for the action. The ``+`` isn't necessary when adding Points. When subtracting Points, add the ``-`` symbol.

   * **When a Contact…** - This is the behavior or action the Contact must complete to receive the Points.

3. On the right side of the page is more information:

   * **Category** - Organize your point actions based on their goals, Campaigns, etc. For more information, see :doc:`Categories</categories/categories-overview>`. All Points accumulate on a Contact record, regardless of Category. There is one score or Points model for each Contact.

   * **Published and Publish/Unpublish at date/time** - Once you have published a point action, Campaign Studio awards Points when a Contact completes the action. Points aren't given for unpublished actions. If you have target behaviors that you want to award Points for within a certain time period, you can set the publish and unpublish dates.

   * **Is repeatable** - To award Points each time a Contact completes an action, select **Yes**. If you want to award Points the first time someone completes the action, select **No** (default).

4. Click **Save** or **Save & Close**.

Point triggers
**************

Once a Contact has accumulated a point total, you may want to trigger an action with the Contact. You may create multiple triggers for different point values.

.. image:: images/points-trigger.png
    :alt: Screenshot of Points trigger

Creating Point Triggers is like creating Point Actions. The **Name**, **Description**, **Category**, and **Publish** options are all the same. The trigger is based on the Minimum number of Points. Set a number and decide if you want to **Trigger for existing applicable Contacts upon saving (if published)**. 

Once you have decided and entered those options, go to the **Events** tab. Here, you can trigger one or more events once a Contact has reached your predetermined point total. These point triggers and associated events are also fully customizable.

.. image:: images/trigger-events.png
    :alt: Screenshot of Points trigger events

Campaign triggers
=================

**Modify Contact’s Campaigns** - Add a Contact to or remove a Contact from any Campaigns you have published.

Contact triggers
================

**Modify Contact’s Segments** - Add a Contact to or remove a Contact from any Segments you have published.

**Modify Contact’s tags** - Add or remove any tags on the Contact record. If a tag doesn't exist, you may create a new one in the edit window for this event.

Add-on triggers
===============

**Push Contact to Integration** - To only push Contacts to an Integration after hitting a minimum point total, use this option. You must have the **Triggered action push Contacts to Integration** option selected in the Integration. After selecting this event, the system displays a dialog box where you can choose which Integration to push the Contact to. For example, if your definition of MQL is based on point values, you may hold non-MQLs out of your CRM. Once a Contact meets the Points requirement to be an MQL, push the Contact to your CRM.

.. note:: 

    The Push Contact to Integration action isn't supported with the Salesforce Plugin.

Email triggers
==============

**Send an Email** - Send a template Email to the Contact based on their engagement. This may be some sort of special offer, congratulations, etc.

.. image:: images/send-an-email-to-user.png
    :alt: Screenshot of Send an Email to user Email trigger

**Send an Email to user** - Tell a team member that a Contact has reached a minimum number of Points. There is an option in this event to send the email to the Contact’s owner. You may either write a basic email in the editor, or use a template email.

   * Selecting a User and selecting the option of **send Email to Contact's owner** notifies both Contacts.

   * If User has no owner or owner is same as user, sends only one email.

   * You can add more Emails to 'to', 'cc' and 'bcc' fields - separate emails with coma (,). You can add space after each coma too.

   * Sends Notification to all address - User's email, owner's email, to, cc and bcc.







