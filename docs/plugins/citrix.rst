Citrix
######

The GoTo Plugins(formerly known as "Citrix Plugin") pull data from Mautic and push data to Mautic from these products:

* GotoMeeting
* GotoWebinar
* GotoTraining
* GoToAssist

Features
********

* Create registrants in GoToWebinar and GoToTraining based on Campaign decisions, Contact data and also from registration Forms in Mautic.
* Use registrant and attendee information in Segments (filters), Forms and Campaigns (actions and decisions).
* Display GoToWebinar and GoToTraining attendance as an additional activity on the Contact timeline
* Send emails with buttons to start GoToMeeting, GoToTraining and GoToAssist sessions
  
Plugin activation instructions
******************************

.. note:: 

    These examples use *GoToMeeting* and *GoToWebinar*, but it's the same for *GoToTraining* and *GoToAssist*.

1. Enable the Plugins you need.
2. Activate the plugins with the Citrix Developer API keys
   * Use the Consumer Keys from the Citrix developer website

New Integrations
****************

Segments
========

New filters
------------

* New Segment filters will be available
* Past GoToProduct sessions will be available to choose from

Forms
=====

New fields
----------

New Form fields will be available

* The fields will display the available events for each product

* The Form will validate that the mandatory fields are present

New actions
-----------

New Form actions will also be available

* Each action will permit to select a single event or let the user select from the form.

* They also include fields to map to obligatory lead fields

Form examples
-------------

User selects an event from a list

* Select event

* Form submitted

Send start button link
----------------------

The Send Link actions require an email object with a Token to insert the link of the event. The available tokens are shown.

Campaigns
*********

New Campaign conditions
=======================

New Campaign actions will be available

* New conditions for registered and attended contacts

New Campaign actions
--------------------

New Campaign actions will be available

* Select the event and the email template to send (if applicable)

Campaign examples
-----------------

Send a webinar start link to registered Contact

This is an example of a Campaign that:

* includes Contacts from a source Segment

* identifies Contact as having registered for a webinar

* sends a start link to event Preliminary Meeting

* The email with the link (that was injected with the Token) is viewed in the browser

* When the contact clicks on the link, it redirects to GoToMeeting to start the meeting

Contacts
********

Contact timeline
================

New events appear in the Contact's timeline

Contact examples
----------------

Attended webinar

This is an example of a webinar where the contact attended.

When the cron job that synchronizes the data runs, it retrieves the new state of the contact and the data is visible on the timeline as an attended event

Synchronize events data cron job
********************************

The cron job to synchronize the events is

.. code-block:: 

    php bin/console mautic:citrix:sync

    Usage:
        ``mautic:citrix:sync [options]``

    Options:
        -p, --product[=PRODUCT]  Product to sync (webinar, meeting, training, assist)
        -i, --id[=ID]            The id of an individual registration to sync

Update: Join GoToWebinar button token
*************************************

Follow these steps to include a GoToWebinar Join Button in a Segment email:

1. Create a webinar in the GotoWebinar website

2. Create a new contact and use the email address to register for the new webinar

3. Run the Citrix Sync console command: ``php bin/console mautic:citrix:sync`` so that the webinar information is retrieved to the database.

4. Create a Segment with a "Webinar (registered)" filter.

.. note:: 

    This is mandatory, and it will be validated when trying to save the email with the token in the body

5. Add the Contact to the Segment manually or by running ``php bin/console mautic:segments:update``

6. Create a new Segment Email and assign the previously created segment.

7. Open the email Builder and insert the GotoWebinar Join Button token:

The button can be styled by overriding the ``citrix-start-button`` CSS class.

.. code-block:: css

    .citrix-start-button {
        background: green !important;
    }

8. Send the email to the Segment contacts.

9. The email arriving in the new Contact's Inbox should include a button to join the webinar with the appropriate URL for the contact.

Update: How to Create a GotoWebinar Campaign From Scratch
*********************************************************

Instructions and best practices for [Mautic] campaigns and emails in a GoToWebinar campaign - from Mautic Inc