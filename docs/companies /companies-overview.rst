
Company
#########


Companies are a way to group contacts based on the company(ies) the contact is assigned to.

.. note:: 

   Company features was introduced in Mautic 3.1.


.. image:: images/Mautic-31-company-view.png
  :width: 600
  :alt: Mautic Company Overview
  
Engagements/Points chart
*************************
Engagement is any action the contacts made. Example page hit, form submission, email open and so on. The Engagements line chart display how active the contacts of the company were in the past 6 months. The chart displays also the sum of points the contacts received.

List of Contacts Assigned
*************************
You can find a table with the list of the assigned contacts displaying the date of their last activity, above the information of the company (name, address, and all you custom company fields) and the chart. This is good way to have a view of the recent activity of the contacts you know in this company.

Company Duplicates
*******************
The Company name field is marked as a unique identifier by default. You can choose any other company field as unique identifier in [custom fields][custom fields].

In Configuration > Company Settings you can choose the operator to be used when merging companies with multiple identifiers - 'AND' or 'OR'.

.. image:: images/company-duplicates-configuration-operator.png
  :width: 600
  :alt: Setup operator for find duplications algorithm