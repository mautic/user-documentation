.. vale off

Exporting Campaigns
##########################

.. vale on

Before importing or exporting data, as a safety precaution take a backup of your database so that you can restore data if required. Speak to the administrator of your domain to be able to do this as it requires specific technical knowledge.

.. important::
    Both the import and the export features are only available in Mautic 7.0 and later versions.

Supported data types
--------------------

Once a Campaign is selected, the export feature will extract all Campaign data and entities and any dependencies that the Campaign needs to function. This includes:

    - Dynamic Content
    - Assets
    - Custom Fields
    - Other related dependencies

The export command will:

    - Detect use of Plugins and Custom Fields
    - Include the data to support these dependencies

.. important::
    The importing instance will need the same Custom Fields and Plugins to be present.

Export mechanic
***************

Whether exporting via the UI, the command line or using the API, the Export feature
follows the same process.
    - Checks that the user has adequate permissions to export
    - Supports exporting multiple Campaigns simultaneously
    - Exports data in a structured JSON format
    - Exports assets into a separate folder in their original format
    - Zips the resulting collection of files for easy transfer across systems

Export methods
**************

The export feature can be used in three ways:

**1. UI-based export**
----------------------

Manual export through Mautic Campaigns dashboard:

1. Go to the Campaigns menu
2. Select the Campaign you want to Export
3. Select the Export option from the dropdown menu located next to the item selection

**2. CLI-based export**
-----------------------

Use the following commands:

.. code-block:: bash
    
    bin/console mautic:entity:export --entity=campaign --id=1 --zip-file

* `entity` defines the type of entity to Export, in this case `campaign`
* `id` defines the id of the Campaign to Export. Look at the URL to find the ID when you view or edit the Campaign - the ID will appear in the URL for example, /s/campaigns/view/123 where 123 is the ID
* `zip-file` creates a zip file of the Campaign and its dependencies

.. code-block:: bash
    
    bin/console mautic:entity:export --entity=campaign --id=1 --json-file

* Creates only a JSON file and ignores any additional assets

**3. API-based export**
-----------------------

You can export Campaigns programmatically using the Mautic API. You will need to authenticate for the API request. using the API credentials stored in Mautic's settings. For more detail on how to authenticate, see the `Mautic API documentation <https://docs.mautic.org/en/5.x/authentication/authentication.html>`_.

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
   url = f'https://{your-domain}/api/campaigns/export/{campaign_id}'

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
    - Replace `{your-domain}` with your actual Mautic instance domain
    - Replace `YOUR_ACCESS_TOKEN` with a valid authentication token
    - The API uses a GET request to export a specific campaign by ID
    - Ensure you have the necessary API permissions
