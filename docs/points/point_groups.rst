.. vale off

Point Groups
#############

.. vale on

Point Groups is a feature that allows users to categorize the score of their Contacts. By setting up Point Groups, users can assign a specific number of Points to each action taken by a Contact, such as opening an Email, visiting a Landing page, or downloading an Asset.

Managing Point Groups
======================
To access the currently defined Point Groups in Mautic, navigate to the Points Menu and click the "Manage Groups" link. To create a new Group, simply click the "New" button.

.. image:: images/new-group.png
  :width: 600
  :alt: Screenshot of the create a new Group interface

Enter a name and a description for the Group and click the "Save & Close" button to create the Group.

Point Groups usage
===================

Point actions
-------------
You can change Contact's Points within a Points Group by using Points Actions.

.. image:: images/point-action-with-group.png
  :width: 600
  :alt: Screenshot of Points action with Group

Point triggers
--------------
You can use Point triggers based on Point Groups to automatically trigger specific events within the system.

.. image:: images/point-trigger-with-group.png
  :width: 600
  :alt: Screenshot of Points trigger with Group

Campaign condition
------------------
You can use a condition based on Group Contact score in a Campaign.

.. image:: images/campaign-point-condition-with-group.png
  :width: 600
  :alt: Screenshot of Points trigger with Group

Campaign action
---------------
You can use a Campaign action to increase or decrease the Group Contact score.

.. image:: images/campaign-point-action-with-group.png
  :width: 600
  :alt: Screenshot of Campaign Point action with Group

Form action
---------------
You can use a Form action to increase or decrease the Group Contact score.

.. image:: images/form-action-with-point-group.png
  :width: 600
  :alt: Screenshot of Form Adjust contact's points action with Group

Segment filters
---------------
Each Point Group adds a new filter that can be used to configurate the Segment.

.. image:: images/segment-group-filter.png
  :width: 600
  :alt: Screenshot of Segment Group filter

.. image:: images/segment-group-filter-element.png
  :width: 600
  :alt: Screenshot of Segment Group filter element

Contact details
---------------
You can display Point Groups in the Contact details.

.. image:: images/contact-group-points.png
  :width: 600
  :alt: Screenshot of Contact Details with Group Points

Group Report
-------------
You can generate a Report that contains information about Contact Point Groups.

.. image:: images/group-report.png
  :width: 600
  :alt: Screenshot of Group Report

Webhooks
________
Changing the Contact Group Points will not trigger the Contact Points Changed Event Webhook