.. vale off

Preference center
#################
.. vale on

Manage Contact Preferences
**************************

When managing a Contact you can set the Contacts preference of communication. You can access the Contact's preference center when viewing a Contact's profile. From the dropdown menu click the preference menu. A new modal window should appear with a tab to set the preferred Channels and frequency of Contact, as well as the option to pause communication within a given period of time. 
The second tab gives the option to add or remove the Contact from global Categories used in Emails or Categories. 
The third tab allowS to add or remove the Contact from Segments it belongs to.

Preferred Channels and Frequency
********************************

.. image:: images/preferences.png
    :align: center
    :alt: Screenshot of Preference

|

In this window you can enable/disable Channels of communication, set the frequency of the communication via each Channel enabled, and set one of the Channels as a preferred Channel.

To set a Channel as a do not contact me through this Channel, untick the tickbox next to the Channel name in the first column.

When a Channel is selected, these will be used to send marketing messages if there is a message set for any of the Channels selected. You can also set the frequency of the communication, as in this example the frequency is set to "Send me emails twice a day" but pause them during the "1st of November 2022 to the 30th of November 2022" . Email is also set as the preferred Channel, so if the same message is set for both email and sms, it will only send the Email version of the message to the selected Contact.

Contact Categories
******************

.. image:: images/categories.png
    :align: center
    :alt: Screenshot of Categories

|

Use the Categories tab to add or remove a Contact from a global Category. Global Categories can be used in areas like Emails, text messages, Campaigns. In combination with the new Subscribed Categories Segment filter, Contacts can be given the choice to opt out of categorized communications.

Contact Segments
****************

.. image:: images/segments.png
    :align: center
    :alt: Screenshot of Segments

|

Use the Segments tab to add or remove a Contact from a Segment. Segments are used as a source for Campaigns and Emails. Any Contact in a particular Segment will be part of a Campaign that has that Segment as the source. You can also use a standalone Email manually to a Segment. If a User has opted out of a Segment it will no longer receive Campaign actions or messages sent to that Segment.

Contact's Unsubscribe Email Preferences
***************************************

.. image:: images/email-unsubscribe-settings.png
    :align: center
    :alt: Screenshot of Email unsubscribe

|

The Contact's preferences can be presented to the User in the unsubscribe page by selecting "Show Contact preference settings" in the Email configuration. You may also choose to hide or show different Segments of the User preferences. If any of these areas is set to no, it hides it from the contact's personal preferences page. The default unsubscribe message is shown if the preference setting option is set to no.

.. image:: images/unsubscribe.png
    :align: center
    :alt: Screenshot of Unsubscribe

|

Customize preference center
===========================

It's possible to customize the personal Preference Center/unsubscribe page, edit text labels, format, and apply Themes using the landing page builder.

Creating a Preference Center Landing Page
*****************************************

When creating/editing a landing page, there is a toggle switch labeled Is *Preference Center*. If selected, the page will be marked as a preference center landing page.

When this page is configured as a preference center in a Mautic Email, recipients will be shown the page when clicking on the ``{unsubscribe_url}`` link. It also shows or hides the Preference Center slots in the builder.

.. image:: images/pref1.png
    :align: center
    :alt: Screenshot of Preference

|

Builder slots
*************

These slots in the builder are used to customize the page:

.. image:: images/pref2.png
    :align: center
    :alt: Screenshot of Preference

|

Tokens
******

Optionally, you can use :doc:`tokens</configuration/variables>` to insert the different slots. Keep in mind that if you use :doc:`tokens</configuration/variables>`, you lose the ability to customize the labels and styles of the slots because it uses the default ones.


.. image:: images/pref3.png
    :align: center
    :alt: Screenshot of Preference

|

See the :doc:`VARIABLES</configuration/variables>` page for a full list of tokens.

In addition, add a **Save preferences** button if you wish to save the preferences, otherwise the preferences can't be saved:

Save the page and the Preference Center landing page is ready.

Landing Pages
*************

Now in the landing pages list, the icon with the little cog indicates that the page is a Preference Center one.

.. image:: images/pref7.png
    :align: center
    :alt: Screenshot of Preference

|

When viewing a Preference Center page, there is a header indicating its purpose and the page URL is not available, only the preview URL.

.. image:: images/pref8.png
    :align: center
    :alt: Screenshot of Preference

|

Setting Preference Center Pages in Emails
*****************************************

When creating or editing an Email, you can select the Preference Center page from the list as shown:

.. image:: images/pref5.png
    :align: center
    :alt: Screenshot of Preference

|

Keep in mind that your mail must use the same langugage as the Preference Center landing page - if not, default Preference Center will be shown.

Now when the email is sent, all recipients will be able to click on the :doc:`Unsubscribe link</configuration/variables>` (``{unsubscribe_text}`` and ``{unsubscribe_url}``) and the new Preference Center page will be displayed.

.. image:: images/pref6.png
    :align: center
    :alt: Screenshot of Preference

|

If no Preference Center page is selected in an Email, the default page is displayed.

.. image:: images/unsubscribe.png
    :align: center
    :alt: Screenshot of Unsubscribe




