.. vale off

Exporting Campaigns
###################

.. vale on

Before importing or exporting data, as a safety precaution take a backup of your database so that you can restore data if required. Speak to the administrator of your domain to be able to do this as it requires specific technical knowledge.

.. important::
    Both the import and the export features are only available in Mautic 7.0 and later versions.

Supported data types
--------------------

When you select a Campaign, the export feature extracts all Campaign data and entities and any dependencies the Campaign needs to function. This includes:

    - Dynamic Content
    - Assets
    - Custom Fields
    - Other related dependencies

The export command:

    - Detect use of Plugins and Custom Fields
    - Include the data to support these dependencies

.. important::
    The importing instance needs the same Custom Fields and Plugins to be present.

.. vale off

How exporting Campaigns works
*****************************

.. vale on

Whether exporting via the UI, the command line or using the API, the Export feature
follows the same process.

    - Checks that the User has adequate permissions to export
    - Supports exporting multiple Campaigns simultaneously
    - Exports data in a structured JSON format
    - Exports Assets into a separate folder in their original format
    - Zips the resulting collection of files for easy transfer across systems

Export methods
**************

You can use the Export feature in three ways:

UI-based export
---------------

Manual export through Mautic Campaigns dashboard:

# Go to the Campaigns menu
# Select the Campaign you want to Export
# Select the Export option from the dropdown menu located next to the item selection

CLI-based export
----------------

Use the following commands:

.. code-block:: bash
    
    bin/console mautic:entity:export --entity=campaign --id=1 --zip-file --path=path/to-file

* `entity` defines the type of entity to Export, in this case `campaign`
* `id` defines the id of the Campaign to Export. Look at the URL to find the ID when you view or edit the Campaign - the ID appears in the URL for example, ``/s/campaigns/view/123`` where 123 is the ID
* `zip-file` creates a zip file of the Campaign and its dependencies
* `path` specifies the directory to save the exported file.

.. code-block:: bash
    
    bin/console mautic:entity:export --entity=campaign --id=1 --json-file

* Creates only a JSON file and ignores any additional resources

API-based export
----------------

You can export Campaigns programmatically using the Mautic API. You need to authenticate for the API request. using the API credentials stored in Mautic's settings. For more detail on how to authenticate, see the :doc:`Mautic API documentation authentication/authentication.html`.

Curl example
************

.. code-block:: bash

   curl --location 'https://{your-mautic-domain}/api/campaigns/export/1' \
   --header 'Authorization: Bearer YOUR_ACCESS_TOKEN' \
   --data ''

Python example
**************

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

.. important::
    - Replace `example.com` with your actual Mautic instance domain
    - Replace `YOUR_ACCESS_TOKEN` with a valid authentication token
    - The API uses a GET request to export a specific Campaign by ID
    - Ensure you have the necessary API permissions
