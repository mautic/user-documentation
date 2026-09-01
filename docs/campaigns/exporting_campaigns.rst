Exporting Campaigns
###################

Before importing or exporting data, back up your database as a safety precaution in case you need to restore it. Speak to the administrator of your Mautic instance to do this, as it requires specific technical knowledge.

.. important::

   Both the import and export features are available only in Mautic 7.0 and later versions.

Supported data types
********************

When you select a Campaign, the export feature extracts all Campaign data and entities, along with any dependencies the Campaign needs to function, including:

* Dynamic Content
* Asset\*
* Other related dependencies

.. note::

   \* The exported Campaign includes only directly associated Assets.

The export command:

* Detect use of Plugins and Custom Fields
* Include the data to support these dependencies

.. important::
    
   The importing instance needs the same Custom Fields and Plugins to be present.

.. vale off

Exporting a Campaign
********************

.. vale on

You can export a Campaign in three ways.

1.\ Using Mautic instance
=========================

#. Go to the **Campaigns** menu.
#. Open the options for the Campaign you want to export. These are available from the three-dot icon on the Campaign list row and from the Campaign detail view.
#. Select the **Export** option. Instead of downloading immediately, Mautic opens the **Share** form.

   |

   .. image:: images/export_campaign.png
      :alt: Highlight of Campaign menu, Options three-dot button, and Export option in the Mautic Campaigns section

   |

   The **Share** form offers two actions:

   .. vale off

   * **Download ZIP** downloads the Campaign export ZIP file, now including a package manifest and any images you added in the form, to your computer, instead of sharing the Campaign publicly. Use **Download ZIP** to get the export file, for example to move the Campaign to another Mautic instance.
   * **Publish to Marketplace** shares the Campaign publicly as a resource package on the Mautic Marketplace. It requires a **Title**, **Vendor**, **Version**, and **Description**, and lets you add **Images**. Use **Publish to Marketplace** only to share the Campaign with the wider Mautic community, since anyone can then access it there.

   .. vale on

.. vale off

2.\ Using the command line
==========================

.. vale on

Use the following commands to save the exported file:

**1. In a specific directory**

.. code-block:: bash
    
    bin/console mautic:entity:export --entity=campaign --id=1 --zip-file --path=path/to-file

**Command parameters**

* ``--entity``: defines the type of entity to export, in this case, ``campaign``.
* ``--id``: defines the ID of the Campaign to export. When you view or edit the Campaign, look at the URL to find the ID. For example, ``/s/campaigns/view/123``, where ``123`` is the ID.
* ``--zip-file``: creates a ZIP file of the Campaign and its dependencies.
* ``--path``: specifies the directory to save the exported file.

**2. In a JSON file**

.. code-block:: bash
    
    bin/console mautic:entity:export --entity=campaign --id=1 --json-only

* Creates only a JSON file and ignores any additional resources.

3.\ Using Mautic API
====================

You can programmatically export Campaigns using the Mautic API. To do this, you must authenticate your API request with the credentials stored in Mautic's settings.

.. vale off

For more details on how to authenticate, see the :doc:`Authentication page </authentication/authentication>`.

.. important::

   * The API uses a GET request to export a specific Campaign by ID.   
    
   * Before running the following cURL or Python examples, ensure you:

     * Replace ``example.com`` with the actual Mautic instance domain.
     * Replace ``YOUR_ACCESS_TOKEN`` with a valid authentication token.
     * Verify that the User account has the necessary API permissions.

.. vale on

cURL example
------------

.. code-block:: bash

   curl --location 'https://example.com/api/campaigns/export/1' \
   --header 'Authorization: Bearer YOUR_ACCESS_TOKEN'

Python example
--------------

.. code-block:: python

   import requests

   # API Endpoint
   campaign_id = 1
   url = f'https://example.com/api/campaigns/export/{campaign_id}'

   # Authentication
   headers = {
       'Authorization': 'Bearer YOUR_ACCESS_TOKEN'
   }

   # Send export request
   response = requests.get(url, headers=headers)

   # Handle response
   if response.status_code == 200:
       export_file = response.content
       # Save or process the exported campaign

.. vale off

How Campaign export works
*************************

.. vale on

Whether exporting via Mautic instance, the command line, or the API, the process follows these logic steps:

.. vale off

* **Permissions:** verifies that the logged-in User has the correct permissions to export.
* **Bulk export:** supports exporting multiple Campaigns simultaneously.
* **Data structure:** exports data in a structured JSON format to ensure compatibility.
* **Asset management:** exports Assets into a separate folder in their original format.
* **File packaging:** compresses the resulting collection of files into a single ZIP file for easy transfer across systems.

.. vale on
