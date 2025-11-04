.. vale off

Importing Campaigns
###################

.. vale on

The Import feature allows you to add pre-configured Campaigns to your Mautic instance using zip files containing all the relevant data to construct a Campaign.

Import process
--------------

Step-by-step import
*******************

1. **Log into your Mautic account**
   Navigate to the main dashboard and authenticate.

2. **Access Campaigns Section**
   Click on the Campaigns menu to view existing Campaigns.

3. **Open Import Options**
   - Click the cog icon in the top-right corner
   - Select **Import** from the dropdown menu

4. **Select Campaign File**
   On the import screen:
   
   - Choose the Campaign zip file you wish to import
   - **Recommended:** use a ZIP file created from the Mautic export function
   - Ensures inclusion of Campaign data, external Assets, and Dynamic Content

.. important::
    The user interface only supports importing ZIP files. You can use both the command line and API endpoints to import correctly structured JSON files.

Import mechanics
****************

During the import process, Mautic performs a comprehensive analysis of the data to import:

- Checks that the logged in User has the correct permissions to import
- Identifies required entities for the Campaign to function
- Validates if a Campaign template depends on an external Plugin:
  
  * The import function verifies Plugin installation
  * When a required Plugin is missing:
    
    - The import process halts
    - Prompts the User to install the necessary Plugin before continuing

- Validates for potential ID conflicts in imported entities
- Where conflicts exist, provides options to:
  
  * Update existing entities, allowing Administrators to update existing Campaigns
  * Create new entities, using a new ID

- **Automatic Data Mapping**
  * Mautic intelligently maps imported data to the correct locations
  * Creates any necessary dependent entities automatically

- **Campaign Activation**
  * After successful import, the Campaign remains inactive by default, so that you stay in control
  * Navigate to the Campaigns list to activate imported Campaigns

.. tip::
   To activate the imported Campaign:
      
      1. Go to the Campaigns section
      2. Locate the newly imported Campaign using the toggle next to the Campaign name |activate_toggle|.
      
      3. Toggle the Campaign status to "Active"
      
  .. |activate_toggle| image:: images/activate-campaign.png
     :alt: Activate Campaign toggle

Importing via the command line
------------------------------

You can import Campaigns using the Mautic command-line console:

.. code-block:: bash

   bin/console mautic:entity:import \
   --entity=campaign \
   --file=/tmp/entity_data.zip \
   --user=<user_id>

Command parameters
******************

- ``--entity=campaign``
  * Specifies the type of entity being imported
  * In this case, importing a Campaign

- ``--file=/tmp/entity_data.zip``
  * Path to the ZIP file containing the Campaign data
  * Must be a valid export file created from a Mautic export

- ``--user=<user_id>``
  * ID of the user performing the import, which is logged against the audit trail
  * Ensures proper access and permissions for the import process

.. important::
    - Ensure the ZIP file is a valid Mautic Campaign export
    - The specified User must have appropriate import permissions
    - Verify the path is correct before running the command

Importing using the Mautic API
------------------------------

You can Import Campaigns programmatically using the Mautic API:

Curl example with ZIP file
**************************

.. code-block:: bash

   curl -X POST 'https://{your-domain}/api/campaigns/import' \
   -H 'Authorization: Bearer YOUR_ACCESS_TOKEN' \
   -H 'Content-Type: multipart/form-data' \
   -F 'file=@/path/to/campaign_export.zip'

Python example with JSON data
*****************************

.. code-block:: python

   import requests

   # API Endpoint
   url = 'https://{your-domain}/api/campaigns/import'

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

API import methods
******************

Mautic supports two primary methods of API-based Campaign import:

1. **ZIP File Import**
   - Use ``multipart/form-data`` content type
   - Upload the complete Campaign export ZIP file
   - Includes all Campaign assets and dependencies from the ZIP file

2. **JSON Data Import**
   - Use ``application/json`` content type
   - Send Campaign details directly in the request body
   - Useful for creating new Campaigns or updating existing Campaigns

.. important::
    - Replace ``{your-domain}`` with your actual Mautic instance domain
    - Ensure you have a valid access token by accessing the API Credentials section within Mautic's settings.
    - The imported Campaign must comply with Mautic's Campaign structure
    - Verify import permissions and data integrity
