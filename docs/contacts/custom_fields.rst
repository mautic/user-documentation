.. vale off

Manage custom fields
####################

.. vale on

You can manage Custom Fields through the Admin menu (click the cogwheel upper right-hand side of Mautic).

.. image:: images/admin-menu.png
    :align: center
    :alt: Screenshot of Admin menu

|

Custom Fields
*************

The **Custom Fields** page lets you view all existing Contact fields as well as any custom Contact fields you have created.

.. image:: images/custom-fields.jpeg
    :align: center
    :alt: Screenshot of Custom Field

|

You will notice the group column shows the specific field on the Contact profile. In the last column, you may see several icons which signify various properties of the field:

.. image:: images/custom-field-icons.png
    :align: center
    :alt: Screenshot of Custom field icons

|

1. **Lock icon** - These fields are unable to be removed as the core installation uses them.

2. **List icon** - These fields can be used as filters of Segments.

3. **Asterisks icon** - These fields are required when filling in the Contact Form

4. **Globe icon** - You can update these fields publicly through the :doc:`tracking pixel</configuration/variables>` URL query see :doc:`Contact Monitoring</contacts/manage_contacts>` for more details.

It's important to note that from Mautic 5, you won't be able to edit the default value for any Fields that are used to identify a Contact or Company, including:

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

Published fields
*****************

There is a toggle switch which shows before each label title. This type of switch is used throughout the Mautic UI to publish and unpublish items.

.. only:: html

   .. figure:: unpublish-fields.gif

    
|


Adding a new field
******************

You can create additional custom fields and define the data type you want that field to hold. In addition to the data type you will also select the group for that particular field. This defines where the field displays on the Contact edit and detail view.

.. image:: images/new-custom-field.jpeg
    :align: center
    :alt: Screenshot of New Custom Field

|

Creating Custom Fields via a command
************************************

Each new Custom Field for Contacts or Companies adds a new column to the database. This operation gets slower with larger instances of Mautic, and it locks the table while it's running, meaning that no changes can be made until the field is created. It will also time out the ``HTTP`` request, so that the User Interface will report the column exists, but Contact/Company updates will actually fail, because the column is still missing.

There is a way around this when you configure the processing of field creation in the background.

Since :xref:`Mautic 3` there is an option you can set in your ``app/config/local.php`` file: ``'create_custom_field_in_background' => true``,.

The new Custom Field will be visible in the list of Custom Fields if this option is configured. It will be unpublished until a command ``bin/console mautic:custom-field:create-column`` runs. This command will create the actual column in the table and publish the field metadata.

This configuration enabled prevents the **http** request timeout because the long-running SQL query creating the new table column is handled in a background task.

If you run the command only once daily when you know that most of your audience is offline, you can mitigate the table lock issue. Therefore, less traffic will go into Mautic, and there is less chance of this being a problem.


