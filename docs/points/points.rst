
Points
######

Points provide a way for properly weighing Contacts. These Points have both triggers and actions. The following section outlines all the relevant term definitions, and a thorough understanding of how Points function. This helps make your overall marketing automation process successful using Points

.. vale off

Point Actions
*************

.. vale on

Point Actions are those times when a Contact receives a change in their Point total. These actions can be either positive or negative Point changes and occur based on a particular action as you determine.

To add a new action:

1. Click **Points > Manage Actions > New** - located in the top right corner.

.. image:: images/new_points_action.png
    :alt: Screenshot of New Points action

2. In the main panel, there are four boxes for key information. Enter the appropriate information.

   * **Name** - The name of your action. This is how the action displays in your list of actions, so choose an identifiable name.

   * **Description** - Add a description to help you find certain actions. There may be more actions which are similar or more in-depth.

   * **Change Points (+/-)** - The value change to set for the action. The ``+`` isn't necessary when adding Points. When subtracting Points, add the ``-`` symbol.

   * **Actions taken by Contact** - This is the behavior or action the Contact must complete to trigger the action.

3. On the right side is more information:

   * **Category** - Organize your Point Actions based on their goals, Campaigns, etc. For more information, see :doc:`Categories</categories/categories-overview>`. All Points accumulate on a Contact record, regardless of Category. There is one Points score for each Contact.

   * **Active and Activate/Deactivate at date/time** - Once you have a Point action, Mautic awards Points when a Contact completes the action. Points aren't given for inactive actions. If you have target behaviors that you want to award Points for within a certain time period, you can set the activate and deactivate dates

   * **Is repeatable** - To award Points each time a Contact completes an action, select **Yes**. If you want to award Points **only** the first time someone completes the action, select **No** - this is the default.

4. Click **Save** or **Save & Close**.

Visits specific URL
===================

The 'Visits specific URL' action awards Points when a Contact visits a URL that matches an address you specify. When you choose this action from 'Actions taken by User', Mautic displays these fields:

* **Page URL** - The web address to track. Enter the full URL, including ``http://`` or ``https://``. Use ``*`` as a wildcard to match part of the address - for example, ``https://example.com/pricing*`` matches the pricing URL with any query string.

* **Total time spent** - Awards Points once the Contact has spent at least this much time on the matching URL across all their visits.

* **Page hits** - Awards Points once the Contact has visited the matching URL at least this many times.

* **First visit only** - Awards Points only on the Contact's first visit to the matching URL.

* **Returns within** and **Returns after** - Award Points when the Contact returns to the matching URL within, or after, the time period you set.

'Total time spent' and 'Page hits' measure cumulative activity on the matching URL. Mautic evaluates them against the Contact's full visit history for that URL, so it awards the Points on the next tracked hit after the Contact crosses the threshold. The Contact doesn't need to revisit the specific URL. Because Mautic measures time spent from the tracking script, the Contact has to load another tracked URL before the most recent visit's time counts.

The remaining options describe a single visit, so Mautic applies them only when the Contact's current hit matches the 'Page URL'.

.. vale off

Point Triggers
**************

.. vale on

Once a Contact has accumulated a Point total, you may want to trigger an action with the Contact. You may create multiple triggers for different Point values.

.. image:: images/new_points_trigger.png
    :alt: Screenshot of New Points trigger

Creating Point Triggers is like creating Point Actions. The **Name**, **Description**, **Category**, and **Active** options are all the same. The trigger fires based on the minimum number of Points. Set a number and decide if you want to **Trigger for existing applicable Contacts upon saving - if activated**. 

Once you have decided and entered those options, go to the **Events** tab. Here, you can trigger one or more events once a Contact has reached your predetermined Point total. These Point Triggers and associated events are also fully customizable.

.. image:: images/new_points_trigger_events.png
    :alt: Screenshot of New Points trigger events

Campaign triggers
=================

**Modify Contact's Campaigns** - Add a Contact to or remove a Contact from any Campaigns you have activated.

.. image:: images/modify_contacts_campaigns.png
    :alt: Screenshot of Modify Contact's Campaigns

Contact triggers
================

**Modify Contact's Segments** - Add a Contact to or remove a Contact from any Segments you have activated.

.. image:: images/modify_contacts_segments.png
    :alt: Screenshot of Modify Contact's Segments

**Modify Contact's tags** - Add or remove any Tags on the Contact record. If a Tag doesn't exist, you may create a new one in the edit window for this event.

.. image:: images/modify_contacts_tags.png
    :alt: Screenshot of Modify Contact's Tags

Add-on triggers
===============

**Push Contact to Integration** - To only push Contacts to an Integration after hitting a minimum Point total, use this option. You must have the **Triggered action push Contacts to Integration** option selected in the Integration. After selecting this event, the system displays a dialog box where you can choose which Integration to push the Contact to. For example, if you base your definition of a Marketing Qualified Lead (MQL) on Point values, you may decide to only push Contacts who are MQLs to your CRM. Once a Contact meets the Points requirement to be an MQL, use this action to push the Contact to your CRM.

.. image:: images/push_contact_to_integration.png
    :alt: Screenshot of Push Contact to Integration

.. note:: 

    The Push Contact to Integration action isn't supported with the Salesforce Plugin.

Email triggers
==============

**Send an Email** - Send a template Email to the Contact based on their engagement. This may be some sort of special offer, congratulations, etc.

.. image:: images/send_an_email.png
    :alt: Screenshot of Send an Email trigger

**Send an Email to User** - Tell a team member that a Contact has reached a minimum number of Points. There is an option in this event to send the Email to the Contact's owner. You may either write a basic Email in the editor, or use a template Email.
  * Selecting a User and selecting the option of **send Email to Contact's owner** notifies both Contacts.

  * If User has no owner or if the owner is same as the Mautic User, this sends only one Email.

  * You can add more Emails to 'to', 'cc' and 'bcc' fields - separated by a comma. You can add space after each comma if needed.

  * Sends Notification to all address - User's Email, owner's Email, to, cc and bcc.

.. image:: images/send_an_email_to_user.png
    :alt: Screenshot of Send an Email to User Email trigger