Companies
#########

Companies are a way to organize contacts into groups based on the companies to which they are assigned.

.. note:: 

   Company features was introduced in :xref:`Mautic 3`.

.. image:: images/Mautic-31-company-view.png
  :width: 600
  :alt: Mautic Company Overview

Engagements/Points chart
*************************
Engagement refers to any action taken by the contacts, such as a page visit, form submission, email open, and so on. The Engagements Line Chart shows how active the company's contacts were in the previous 6 months, as well as the total number of points received by the contacts.

List of Contacts Assigned
*************************
Above the company information (name, address, and any custom company fields) and the chart, you'll see a table with a list of the assigned contacts and the date of their last activity. This is good way to have a view of the recent activity of the contacts you have in this company.

Company Duplicates
*******************
The Company name field is marked as a unique identifier by default. You can choose any other company field as unique identifier in **custom fields**.

In *Configuration > Company Settings* you can choose the operator to be used when merging companies with multiple identifiers **AND** or **OR**.

.. image:: images/company-duplicates-configuration-operator.png
  :width: 600
  :alt: Setup operator for find duplications algorithm

These settings allow  Mautic to find and merge duplicate companies during the import, using the integrations framework and in other parts of Mautic.

Company Actions
***************

Merging Companies
=================

When editing a company, you can merge this company into another existing company by using the **Merge** button.

Search for the company you wish to merge into the fields from the current company that are not populated in the selected company.  it will be copied to the selected company. Contacts that are not in the selected company will also be transferred.

After the current company has been merged into the selected company, you will be  redirected to the selected company and the old company will be deleted from the database.


Company Custom Fields
=====================

With Mautic's installation a set of custom fields is provided for companies, but you can customize these fields to your needs.

#. Go to **Custom Fields** and create any company field you need.

#. Go to the right select box to assign this field to **Company**.

Company Segments
================

You can create a segment based on a company record, simply select any company field to filter with and the matching criteria for it, and contacts that match any company filtered will be added to the segment.

Identifying Companies
=====================

Companies are identified strictly through a matching criteria based on **Company Name**, **City**, **Country or State**. If  a city or a country is not delivered as an identifying fields to identify a contact, the company will not be matched or created.

Campaign Company Actions
========================

A contact can be added to a new company based on a campaign action.

Create/Manage Companies
=======================

To create or manage companies, go to the companies menu identified by the building icon. In this area you can create, edit or delete companies.

Assigning Companies to Contacts
*******************************

There are different ways to assign a company to a contact, all explained next:

Contact's Profile
==================

You can assign a contact to companies in the contact's profile page while creating or editing an existing one. The latest company assigned will be treated as the primary company for the contact.

Contacts List View
===================

You can batch assign companies to selected contacts in the contact's list view.

Through a Campaign
===================

You can assign a company to identify contacts through a campaign by selecting the **Assign contact** to **company action**.

When Identifying a Contact Through a Form
*****************************************

If a contact is identified through a form, a company can also be identified/created if:

* Company name is selected as a form field (mandatory for company matching/creation).
* City is selected as a form field (mandatory for company matching/creation).
* Country is selected as a form field (mandatory for company matching/creation).
* State is selected as a form field (optional for company matching/creation).

Company Scoring
***************

Companies score can be changed through a campaign action or a form action. When one of these actions is selected,  the contact must be identified first, and the companies assigned to that contact will have their score changed.

#. Select contact's **Change company score** action in either a form or a campaign
#. Once a form is submitted or a campaign is triggered it will identify companies identified in the campaign or form to change its score.

Setting Primary Company
***********************

You can set primary company through the contact details page.

.. image:: images/primary-company.png
  :width: 600
  :alt: primary company