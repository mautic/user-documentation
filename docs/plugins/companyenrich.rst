.. vale off

CompanyEnrich
#############

.. vale on

:xref:`CompanyEnrich` provides business-to-business data about companies and professional profiles. Use the CompanyEnrich Plugin to research accounts from inside Mautic and to complete missing fields on existing Contacts and Companies with your own CompanyEnrich API key.

This Plugin can:

* Run CompanyEnrich research requests, such as company enrichment, company search, similar companies, workforce data, and people lookup and search, from a research page in Mautic.
* Fill empty profile fields on a Contact using the Contact's email address, or on a Company using the Company's website.

Most CompanyEnrich requests consume credits from your CompanyEnrich account. Mautic sends a request only when you submit a research form or confirm a fill action - saving the Plugin settings or opening a page doesn't send one. Mautic doesn't retry failed requests or load further pages of results automatically.

Configure the CompanyEnrich Plugin
**********************************

Before you start, get an API key from your CompanyEnrich account.

#. Go to **Settings** > **Plugins**.

#. Select **CompanyEnrich**. If you don't see it, select **Install/Upgrade Plugins**.

#. On the **Enabled/Auth** tab, enter your key in the **CompanyEnrich API key** field.

#. Set **Is Enabled?** to **Yes**.

#. Select **Save & Close**.

Mautic stores the API key encrypted.

CompanyEnrich permissions
*************************

The research page and the fill action are available to Users whose Role has the **Manage** permission for Plugins. To fill fields on a record, the User's Role also needs view and edit permissions for that record under Contacts. Companies use the Contacts permissions. For more information, see :doc:`/users_roles/managing_roles`.

Research companies and people
*****************************

Use the research page to look up companies and professional profiles without changing any records in Mautic.

#. In the main menu, select **CompanyEnrich research**.

#. Select an operation from the **Operation** list.

#. Enter the request parameters as JSON objects in **Query parameters (JSON)** and **Filters or request body (JSON)**. Enter ``{}`` in a field the operation doesn't use. The page shows examples for common operations.

#. Select **Run research**.

Mautic shows the response from CompanyEnrich under **Research results**, along with the number of credits consumed when CompanyEnrich reports it. Clear the inputs when you switch to another operation.

The available operations are:

.. list-table::
   :header-rows: 1
   :widths: 40 60

   * - Operation
     - Example input
   * - Enrich company by domain
     - Query parameters ``{"domain":"example.com"}``
   * - Enrich company by name or social profile
     - Body ``{"name":"Example Inc"}`` or a social profile URL such as ``{"linkedinUrl":"https://www.linkedin.com/company/example"}``
   * - Enrich up to 50 companies
     - Body ``{"domains":["example.com","example.org"]}``
   * - Get company by ID
     - Query parameters with the CompanyEnrich company ID, for example ``{"id":"{company ID}"}``
   * - Search companies, Count matching companies
     - Body ``{"semanticQuery":"Accounting software","page":1,"pageSize":10}``
   * - Find similar companies, Count similar companies
     - Body ``{"domains":["example.com"],"pageSize":10}``
   * - Company workforce
     - Query parameters ``{"domain":"example.com"}``
   * - Look up person by existing email
     - Body ``{"email":"alex@example.com"}``
   * - Get person by ID
     - Query parameters with the CompanyEnrich person ID, for example ``{"id":12345}``
   * - Search professional profiles
     - Body with search filters
   * - Get person education
     - Query parameters ``{"id":12345}``
   * - Autocomplete company domains
     - Query parameters ``{"query":"examp"}``
   * - Preview companies, Preview similar companies
     - Body with search filters. These operations need a CompanyEnrich plan that includes them.

For the parameters and filters each operation accepts, see the :xref:`CompanyEnrich API reference`. Search operations return at most 100 results for each page. People search returns professional profiles, not email addresses.

Fill missing profile fields
***************************

Use this action to complete an existing Contact or Company with data from CompanyEnrich. The action only fills fields that are empty and doesn't overwrite existing values.

The record needs an identifier for the lookup:

* A Contact needs an email address. Mautic looks up the person by that email address.
* A Company needs a website. Mautic looks up the company by the website's domain.

To fill the fields:

#. Open the Contact or Company, or find it in the Contacts or Companies list.

#. Select **Fill missing profile fields** from the record's actions.

#. Check the email address or website shown in the confirmation window, then select **Fill missing profile fields**.

Mautic shows the number of fields it updated, the names of those fields, and the credits consumed when CompanyEnrich reports them.

The action can fill these fields:

.. list-table::
   :header-rows: 1
   :widths: 30 70

   * - Record
     - Fields
   * - Contact
     - First name, last name, position, city, and country
   * - Company
     - Company name, description, city, and country

The action doesn't change email addresses, owners, Segment membership, Campaign membership, or marketing preferences. Employee count and revenue stay in the research results, because CompanyEnrich returns them as ranges rather than exact values.

Mautic saves the record the same way as an edit in the UI, so Webhooks and other actions that react to record updates run as usual.

If someone else changes the record while the lookup runs, Mautic doesn't update any fields and shows an error. The lookup may still consume credits. Reload the record and run the action again.
