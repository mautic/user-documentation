.. vale off

Exporting Campaigns
##########################

.. vale on

Before importing or exporting data, as a safety precaution take a backup of your database so that you can restore data if required. Speak to the administrator of your domain to be able to do this as it requires specific technical knowledge.

.. important::
    Both the import and the export features are only available in Mautic 7.0 and later versions.

Supported Data Types
--------------------

Once a campaign is selected, the export feature will extract all campaign data and entities and any dependencies that the campaign needs to function. This includes:

    - Dynamic content
    - Assets
    - Custom fields
    - Other related dependencies

The export command will:

    - Detect use of plugins and custom fields
    - Include the data to support these dependencies

.. important::
    The importing instance will need the same custom fields and plugins to be present.

Export Mechanic
***************

Whether exporting via the UI, the command line or using the API, the export feature
follows the same process.
    - Checks that the user has adequate permissions to export
    - Supports exporting multiple campaigns simultaneously
    - Exports data in a structured JSON format
    - Exports assets into a separate folder in their original format
    - Zips the resulting collection of files for easy transfer across systems

Export Methods
**************

The export feature can be used in three ways:

**1. UI-Based Export**
----------------------

Manual export through Mautic Campaigns dashboard:

1. Go to the Campaigns menu
2. Select the campaign you want to export
3. Select the export option from the dropdown menu located next to the item selection

**2. CLI-Based Export**
-----------------------

Use the following commands:

.. code-block:: bash
    
    bin/console mautic:entity:export --entity=campaign --id=1 --zip-file

* `entity` defines the type of entity to export, in this case `campaign`
* `id` defines the id of the campaign to export. Look at the URL to find the ID when you view or edit the campaign - the ID will appear in the URL e.g., /s/campaigns/view/123 where 123 is the ID
* `zip-file` creates a zip file of the campaign and its dependencies

.. code-block:: bash
    
    bin/console mautic:entity:export --entity=campaign --id=1 --json-file

* Creates only a JSON file and ignores any additional assets and files

**3. API-Based Export**
-----------------------

You can export campaigns programmatically using the Mautic API. You will need to authenticate for the API request. using the API credentials stored in Mautic's settings. For more detail on how to authenticate, see the `Mautic API documentation <https://docs.mautic.org/en/5.x/authentication/authentication.html>`_.

Curl Example
************

.. code-block:: bash

   curl --location 'https://{your-mautic-domain}/api/campaigns/export/1' \
   --header 'Authorization: Bearer YOUR_ACCESS_TOKEN' \
   --data ''

Python Example
**************

.. code-block:: python

   import requests

   # API Endpoint
   campaign_id = 1
   url = f'https://{your-mautic-domain}/api/campaigns/export/{campaign_id}'

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
    - Replace `{your-mautic-domain}` with your actual Mautic instance domain
    - Replace `YOUR_ACCESS_TOKEN` with a valid authentication token
    - The API uses a GET request to export a specific campaign by ID
    - Ensure you have the necessary API permissions
