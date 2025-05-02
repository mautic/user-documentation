.. vale off

Importing Campaigns
##########################

.. vale on

The Import feature allows you to add pre-configured campaigns to your Mautic instance using zip files containing all the relevant data to construct a campaign.

Import Process
--------------

Step-by-Step Import
*******************

1. **Log into your Mautic account**
   Navigate to the main dashboard and authenticate.

2. **Access Campaigns Section**
   Click on the Campaigns menu to view existing campaigns.

3. **Open Import Options**
   - Click the cog icon in the top-right corner
   - Select **Import** from the dropdown menu

4. **Select Campaign File**
   On the import screen:
   
   - Choose the campaign zip file you wish to import
   - **Recommended:** Use a ZIP file created from the Mautic export function
   - Ensures inclusion of campaign data, external assets, and dynamic content

.. important::
    Only ZIP files are supported for campaign imports.

Import Mechanics
****************

During the import process, Mautic performs a comprehensive analysis:

- Checks that the logged in user has the correct permissions to be able to import
- Identifies required entities for campaign functionality
- If a campaign template depends on an external plugin:
  
  * The import function verifies plugin installation
  * When a required plugin is missing:
    
    - The import process halts
    - Prompts the user to install the necessary plugin before continuing

- Checks for potential ID conflicts in imported entities
- Where conflicts exist, provides options to:
  
  * Update existing entities
  * Create new entities

- **Automatic Data Mapping**
  * Mautic intelligently maps imported data to the correct locations
  * Creates any necessary dependent entities automatically

- **Campaign Activation**
  * After successful import, the campaign remains inactive by default, so that you stay in control
  * Navigate to the campaign list to activate the imported campaign

  .. tip::
      To activate the imported campaign:
      
      1. Go to the Campaigns section
      2. Locate the newly imported campaign
      3. Toggle the campaign status to "Active"

Importing via the command line
------------------------------

You can import campaigns using the Mautic command-line console:

.. code-block:: bash

   bin/console mautic:entity:import \
   --entity=campaign \
   --file=/tmp/entity_data.zip \
   --user=<user_id>

Command Parameters
******************

- ``--entity=campaign``
  * Specifies the type of entity being imported
  * In this case, importing a campaign

- ``--file=/tmp/entity_data.zip``
  * Path to the ZIP file containing the campaign data
  * Must be a valid export file created from a Mautic export

- ``--user=<user_id>``
  * ID of the user performing the import, which is logged against the audit trail
  * Ensures proper access and permissions for the import process

.. important::
    - Ensure the ZIP file is a valid Mautic campaign export
    - The specified user must have appropriate import permissions
    - Verify the file path is correct before running the command

Importing using the Mautic API
------------------------------

You can import campaigns programmatically using the Mautic API:

Curl Example (ZIP File)
***********************

.. code-block:: bash

   curl -X POST 'https://{your-mautic-domain}/api/campaigns/import' \
   -H 'Authorization: Bearer YOUR_ACCESS_TOKEN' \
   -H 'Content-Type: multipart/form-data' \
   -F 'file=@/path/to/campaign_export.zip'

Python Example (JSON Data)
**************************

.. code-block:: python

   import requests

   # API Endpoint
   url = 'https://{your-mautic-domain}/api/campaigns/import'

   # Authentication
   headers = {
       'Authorization': 'Bearer YOUR_ACCESS_TOKEN',
       'Content-Type': 'application/json'
   }

   # Campaign import data
   payload = {
       'name': 'Imported Campaign',
       'description': 'Campaign imported via API',
       # Add other campaign details as needed
   }

   # Send import request
   response = requests.post(url, headers=headers, json=payload)

   # Handle response
   if response.status_code == 200:
       imported_campaign = response.json()
       print("Campaign imported successfully")

API Import Methods
******************

Mautic supports two primary methods of API-based campaign import:

1. **ZIP File Import**
   - Use ``multipart/form-data`` content type
   - Upload the complete campaign export ZIP file
   - Includes all campaign assets and dependencies

2. **JSON Data Import**
   - Use ``application/json`` content type
   - Send campaign details directly in the request body
   - Useful for creating new campaigns or updating existing ones

.. important::
    - Replace ``{your-mautic-domain}`` with your actual Mautic instance domain
    - Ensure you have a valid access token by accessing the API Credentials section within Mautic settings and either creating new credentials or retrieving existing ones from the list of authorized API clients.
    - The imported campaign must comply with Mautic's campaign structure
    - Verify import permissions and data integrity
