Preference center
#################

.. vale off

Manage Contact preferences
**************************

.. vale on

When managing a Contact you can set the Contact's preference of communication. You can access the Contact's Preference Center when viewing a Contact's profile. From the dropdown menu click the preference menu. A new modal window should appear with a tab to set the preferred Channels and frequency of Contact, as well as the option to pause communication within a given period of time. 
The second tab gives the option to add or remove the Contact from global Categories used in Emails or Categories. 
The third tab allows you to add or remove the Contact from Segments they belong to.

.. vale off

Preferred Channels and frequency
================================

.. vale on

.. image:: images/preferences.png
    :align: center
    :alt: Screenshot of Preference

|

In this window you can switch Channels of communication, set the frequency of the communication via each Channel enabled, and set one of the Channels as a preferred Channel.

To prevent communications through a Channel, remove the select next to the Channel name in the first column. This sets a Do Not Contact (DNC entry) for only that Channel.

When selecting a Channel, Mautic uses this to send Marketing Messages if there is a message set for any of the Channels selected. You can also set the frequency of the communication, as in this example the set frequency is "Send Emails twice a day" but to pause them between November 1 2022 and November 30 2022. Email is also set as the preferred Channel, so if the Marketing Message has the same message for both Email and SMS, it only sends the Email version of the message to the selected Contact

.. vale off

Contact Categories
==================

.. vale on

.. image:: images/categories.png
    :align: center
    :alt: Screenshot of Categories

|

Use the Categories tab to add or remove a Contact from a global Category. Mautic uses Global Categories in areas like Emails, Text Messages and, Campaigns. In combination with the Subscribed Categories Segment filter, Contacts can opt out of categorized communications.

.. vale off

Contact Segments
================

.. vale on

.. image:: images/segments.png
    :align: center
    :alt: Screenshot of Segments

|

Use the Segments tab to add or remove a Contact from a Segment. Segments are a source for both starting Campaigns and sending Emails. Any Contact in a particular Segment is automatically part of a Campaign that has that Segment as the source. You can also use a standalone Email to manually send an Email to a Segment. If a User has opted out of a Segment they no longer receive Campaign actions or messages sent to that Segment.

.. vale off

Contact's unsubscribe Email preferences
=======================================

.. vale on

.. image:: images/email-unsubscribe-settings.png
    :align: center
    :alt: Screenshot of Email unsubscribe

|

You can display the Contact's preferences in the unsubscribe page by selecting "Show Contact preference settings" in the Email configuration. You may also choose to hide or show different Segments of the User preferences. If you have turned off any of these options in the global settings, they don't show on the Contact's personal preferences page. Mautic displays the default unsubscribe message when you have turned off the preference setting option, resulting in the Contact being directly unsubscribed rather than being able to choose their preferences.

.. image:: images/unsubscribe.png
    :align: center
    :alt: Screenshot of Unsubscribe

|

Customize preference center
***************************

It's possible to customize the personal Preference Center/unsubscribe page, edit text labels, format, and apply Themes using the Landing Page builder.

.. vale off 

Creating a Preference Center Landing Page
=========================================

.. vale on

When creating/editing a Landing Page, there is a toggle switch labeled *Is Preference Center*. If selected, Mautic marks the Page as a preference center Landing Page, making available the appropriate tokens.

When configured as a preference center in a Mautic Email, Mautic automatically directs recipients to this Preference Center when clicking on the ``{unsubscribe_url}`` link. It also shows or hides the Preference Center slots in the Builder.

.. image:: images/pref1.png
    :align: center
    :alt: Screenshot of Preference Center switch on a Landing Page

|

Preference tokens
******************

You can use :ref:`Preference Center Landing Page tokens` to insert the different slots. These are available as tokens in the editor in the GrapesJS Builder.

.. image:: images/pref3.png
    :align: center
    :alt: Screenshot of Preference Center tokens in editor

|

See the :doc:`Variables</configuration/variables>` documentation for a full list of tokens available for use with a Preference Center.

In addition, add a **Save preferences** button if you wish to save the preferences, otherwise the Contact can't save their preferences:

Save your changes, and the Preference Center Landing Page is ready.

.. vale off 

Landing Pages
*************

.. vale on

Now in the Landing Pages list, the icon with the cog icon indicates that the Page is a Preference Center.

.. image:: images/pref7.png
    :align: center
    :alt: Screenshot of Preference Center showing icon to denote a Preference Center

|

When viewing a Preference Center Page, there is a header indicating its purpose and the Page URL isn't available, only the preview URL.

.. image:: images/pref8.png
    :align: center
    :alt: Screenshot of Preference Center with the preview URL only

|

.. vale off 

Setting Preference Center Pages in Emails
*****************************************

.. vale on

When creating or editing an Email, you can select the Preference Center Page from the list as shown:

.. image:: images/pref5.png
    :align: center
    :alt: Screenshot of Preference Center select box when creating an Email

|

Keep in mind that your mail must use the same language as the Preference Center landing page - if not, Mautic shows the default Preference Center.

Now when sending the Email, all recipients can click the Unsubscribe link provided in the ``{unsubscribe_text}`` and ``{unsubscribe_url}`` variables, taking them to the new Preference Center.

.. image:: images/pref6.png
    :align: center
    :alt: Screenshot of Preference Center as a Contact

|

If you don't select a Preference Center in an Email, Mautic uses the default Preference Center styled with the default Theme.

.. image:: images/unsubscribe.png
    :align: center
    :alt: Screenshot of Unsubscribe




