.. vale off

Manage Custom Fields
####################

.. vale on

You can manage Custom Fields through the Admin menu - click the cogwheel upper right-hand side of Mautic.

.. image:: images/custom_fields_option.png
   :align: center
   :alt: Highlight of Custom Fields option in the settings

|

Custom Fields
*************

The **Custom Fields** page lets you view all existing Contact fields as well as any custom Contact fields you have created.

.. image:: images/custom_fields_page.png
   :align: center
   :alt: Screenshot of Custom Field

|

You'll notice the group column shows the specific field on the Contact profile. In the last column, you may see several icons which signify various properties of the field:

.. image:: images/custom-field-icons.png
    :align: center
    :alt: Screenshot of Custom field icons

|

1. **Lock icon** -  The core installation uses these fields, you can't remove them.

2. **List icon** - You can use these fields as filters for Segments.

3. **Asterisks icon** - These are mandatory when filling in the Contact Form

4. **Globe icon** - You can update these fields publicly through the :doc:`tracking pixel</configuration/variables>` URL query see :doc:`Contact Monitoring</contacts/manage_contacts>` for more details.

It's important to note that from Mautic 5, you won't be able to edit the default value for any Fields used to identify a Contact or Company, including:

* Email

* Company

* First name

* Last name

* Social profiles

* Unique identifier fields

* Company name

* Company Email

* Company website

* State

* Country

* City

Filtering Custom Fields with Quick filters
******************************************

The Custom Fields list has a 'Quick filters' popover you can use to filter the list without typing search commands manually.

#. Go to Settings > Custom Fields.

#. Open 'Quick filters'. Under the 'Others' group, you'll see 'Indexed' and 'Unique'.

#. Select 'Indexed' or 'Unique', then click 'Apply selected'.

Selecting 'Indexed' shows the fields included in database indexes and adds the ``is:indexed`` command to the search box. Selecting 'Unique' shows the unique identifier fields and adds the ``is:unique`` command. To switch to a different option, first click 'Reset'.

Because 'Quick filters' just adds a command to the search box, you can edit or extend that command—the full search still works for combined or more detailed queries.

For the full list of search commands and other filters, see the :doc:`Searching Mautic </search/search_operators>` page.

Published fields
*****************

There is a toggle switch which shows before each label title. You can find this type of switch throughout the Mautic UI for publishing and unpublishing items.

.. only:: html

   .. figure:: images/unpublish-fields.gif

|

.. vale off

Adding a new Custom Field
*************************

.. vale on

You can create additional Custom Fields and define the data type you want that field to hold. In addition to the data type you select the group for that particular field. This defines where the field displays on the Contact edit and detail view.

.. image:: images/new-custom-field.jpeg
    :align: center
    :alt: Screenshot of New Custom Field

|

.. vale off

Deciding between a Custom Field and a Tag
=========================================

.. vale on

When creating a new Custom Field, you may see a card labeled **Should this be a field?** on the Form. Clicking this card opens a decision helper modal that guides you through choosing whether to use a Custom Field or a Tag for storing your Contact information.

.. image:: images/field-vs-tag-decision-helper.png
    :align: center
    :alt: Screenshot of the Field vs Tag decision helper modal

|

**Use a Custom Field when you need to:**

* Personalize Emails with the data, such as a name or date
* Store unique Contact information like names, dates, or phone numbers
* Import or export the information regularly
* Use the data in complex conditional logic or workflows

.. vale off

**Use a Tag when you need to:**

* Track an action, interest, or behavior, such as a product purchased, web page visited, or survey completed
* Quickly add or remove multiple labels at once
* Organize Contacts by source, Campaign, or how they joined your list
* Create simple yes/no classifications for automation, such as 'VIP customer' or 'Newsletter subscriber'

.. vale on

**Why does it matter?**

Mautic stores Fields and Tags differently in the database. You can create unlimited Tags, but Custom Fields have server capacity limits and may impact performance. Use Tags for simple categorization and Custom Fields only when you need capabilities that Tags don't provide.

For more information on using Tags, see the :ref:`Tags in manage Contacts` section.

Creating Custom Fields via a command
************************************

When you create a new Custom Field for Contacts or Companies in Mautic, the system adds a new column to the database. For larger instances of Mautic, this operation can slow down, and the table remains locked while running. As a result, you can't make any changes until the system creates the field. The ``HTTP`` request may time out, causing the User Interface to report that the column exists even though Contact/Company updates may fail because the column is still missing.

There is a way around this when you configure the processing of field creation in the background.

Since :xref:`Mautic 3` there is an option you can set in your ``app/config/local.php`` file: ``'create_custom_field_in_background' => true``,.

If you configure this option, the new Custom Field becomes visible in the list of Custom Fields. The Custom Field remains unpublished until you run the command ``bin/console mautic:custom-field:create-column``. This command creates the actual column in the table and publishes the field metadata.

Similarly, the ``bin/console mautic:custom-field:delete-column`` command deletes the actual column in the table if you have turned on the ``create_custom_field_in_background`` config option. The column gets soft-deleted and removed from the user interface, but the data is still present in the database until you run the command to delete the column.

This configuration helps prevent **http** request timeouts because it handles the long-running SQL query to create the new table column as a background task.

To mitigate the table lock issue, run the command only once daily when you know that most of your audience is offline. With less traffic going into Mautic, the chances of encountering a problem are lower.


Analyzing Custom Fields to optimize tables
******************************************

Since Mautic 5.1 there is a command which allows you to analyze the Custom Fields and optimize the tables. This command is useful when you have a lot of Custom Fields and you want to optimize the size of VARCHAR fields.  

Using this command allows you to optimize the VARCHAR columns so that you can create more Custom Fields if you hit the hard limit on the Leads table and can't create more.

Use the command:

.. code-block:: bash

    bin/console mautic:fields:analyse -t

Use the -t argument to see the output in tabulated form in the console.

Use the following to export the data to a file:

.. code-block:: bash

    bin/console mautic:fields:analyse > path/to/file.csv

Locally defined countries and regions
*************************************

Since Mautic 5.1 it's possible to define custom countries and regions via locally hosted JSON files. This is useful when you have a specific set of countries or regions that you want to use in your Mautic instance. You can define these in a file called ``countries.json`` or ``regions.json`` located in your defined ``upload_dir`` which is ``media/files`` by default. Example code snippets are below:

.. code-block:: json

  [
  "Middle Earth",
  "Fillory"
  ]

.. code-block:: json
  
  {
  "Middle Earth": [
    "The Shire",
    "Mordor"
  ],
  "Fillory": [
    "Castle Whitespire",
    "Ember's Tomb"
  ]
  }

