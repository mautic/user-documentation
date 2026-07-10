.. vale off

Projects
########

.. vale on

.. vale off

Projects overview
*****************

.. vale on

Projects give you one place to group everything that belongs to a single marketing initiative. Instead of hunting for the Campaigns, Emails, Segments, and other items behind a launch, you assign them all to a Project and manage them together. A Project works like a folder that spans item types, so you can see how the pieces of an initiative fit together and find related items quickly.

You can assign many item types to a Project, including Asset, Campaign, Company, Dynamic Content, Email, Focus Item, Form, Landing Page, Marketing Message, Point, Point Trigger, Segment, Stage, and Text message.

.. vale off

Managing Projects
*****************

.. vale on

To open the Projects list, select Projects in the left main menu. From here, you can create a new Project, open an existing one, and delete Projects you no longer need. The list shows each Project along with the number of items assigned to it.

.. vale off

Creating Projects
=================

.. vale on

**To create a Project:**

* Select **New**.
* Give it a name and an optional description.

Each Project name must be unique. If you enter a name that's already in use, Mautic displays 'A project with this name already exists.' and asks you to choose another.

.. vale off

Deleting Projects
=================

.. vale on

**To delete one or more Projects:**

* Select the checkbox of the Projects you want to delete. Selecting a checkbox automatically opens a blue banner on top of the table.
* Click **Delete selected**.

Deleting a Project removes the references to it from every assigned item, but it doesn't delete the items themselves.

.. vale off

Assigning items to a Project
============================

.. vale on

There are two ways to assign items to a Project.

* **From the item** - When you create or edit a supported item, such as an Email or a Campaign, use the Projects field to assign it to one or more Projects. If you have permission to create Projects, you can also type a new name in this field and select **Hit enter to create** to make a new Project on the spot.

* **From the Project**:

  #. Open a Project and select **Add Entities to Project**.
  #. Choose the type of item you want to add.
  #. Select the item you want to add to the Project.

.. vale off

Deleting items from Projects
============================

.. vale on

To delete an item from a Project:

* Click the three-dots icon next to the entity you want to remove to open the Options menu.
* Click the **Remove from project** button.
* Confirm the removal.

.. vale off

Finding items by Project
========================

.. vale on

Use the ``project`` search command to filter any supported list down to the items in a Project. In the search box, enter ``project:name`` to show only the items assigned to that Project. For example, ``project:"Summer Launch"`` returns every item assigned to the 'Summer Launch' Project.

.. vale off

Permissions
***********

.. vale on

Projects use their own permission set, which you can grant per Role under the **Project permissions** section. Alongside the standard View, Edit, Create, Delete, and Full permissions, there's a separate **Associate with other entities** permission that controls whether a User can attach items to and detach items from Projects. A User needs this permission to use the Projects field on an item or the add and remove actions on a Project.
