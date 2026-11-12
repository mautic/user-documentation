Variables
#########

.. tip:: 
  Default Value

  The default value - sometimes called Fallback Text - is specified after the ``|`` character. Consider this Email salutation:

  ``Hi {contactfield=firstname|there},``

Token modifiers
***************

Label modifier for select and boolean fields
============================================

For select and boolean type fields, you can use the ``|label`` modifier to display the human-readable label instead of the stored value. It's beneficial when your select fields store values like codes or IDs, but you want to display friendly labels to your Contacts.

**Syntax:**

.. code-block:: text

   {contactfield=field_alias|label}

**Examples:**

* For a select field with alias ``country_select`` that has options, such as ``us`` for ``United States`` or ``uk`` for ``United Kingdom``:

   * ``{contactfield=country_select}`` displays the value ``us``
   * ``{contactfield=country_select|label}`` displays the label ``United States``

* For a boolean field with alias ``is_subscriber``:

   * ``{contactfield=is_subscriber}`` displays the value ``1`` or ``0``
   * ``{contactfield=is_subscriber|label}`` displays the label ``Yes`` or ``No``

* For both Contact fields and Company fields:

   * ``{contactfield=company_type|label}`` displays the label of a Company select field
   * ``{contactfield=company_active|label}`` displays the label of a Company boolean field

.. note::

   The ``|label`` modifier only works with select and boolean field types. For other field types, it displays the regular value.

Contact fields
**************

See :doc:`managing custom fields </contacts/custom_fields>` for more information.

.. list-table:: 
   :widths: 100 100
   :header-rows: 1

   * - Variable name
     - Variable syntax
   * - Attribution
     - ``{contactfield=attribution}``
   * - Attribution Date
     - ``{contactfield=attribution_date}``
   * - Address Line 1
     - ``{contactfield=address1}``
   * - Address Line 2
     - ``{contactfield=address2}``
   * - Country
     - ``{contactfield=country}``
   * - City
     - ``{contactfield=city}``
   * - Company
     - ``{contactfield=company}``
   * - Contact ID
     - ``{contactfield=id}``
   * - Email
     - ``{contactfield=email}``
   * - Facebook
     - ``{contactfield=facebook}``
   * - Fax
     - ``{contactfield=fax}``
   * - First Name
     - ``{contactfield=firstname}``
   * - Foursquare
     - ``{contactfield=foursquare}``
   * - Google+
     - ``{contactfield=googleplus}``
   * - Instagram
     - ``{contactfield=instagram}``
   * - IP Address
     - ``{contactfield=ipAddress}``
   * - Last Name
     - ``{contactfield=lastname}``
   * - LinkedIn
     - ``{contactfield=linkedin}``
   * - Mobile Number
     - ``{contactfield=mobile}``
   * - Phone Number
     - ``{contactfield=phone}``
   * - Position
     - ``{contactfield=position}``
   * - Skype
     - ``{contactfield=skype}``
   * - State
     - ``{contactfield=state}``
   * - Twitter
     - ``{contactfield=twitter}``
   * - Title
     - ``{contactfield=title}``
   * - Website
     - ``{contactfield=website}``
   * - Zip Code
     - ``{contactfield=zipcode}``
  
Contact Owner fields
*********************
  
.. list-table:: 
   :widths: 100 100
   :header-rows: 1
  

   * - Variable name
     - Variable syntax
   * - First Name
     - ``{ownerfield=firstname}``
   * - Last Name
     - ``{ownerfield=lastname}``
   * - Email
     - ``{ownerfield=email}``
   * - Position
     - ``{ownerfield=position}``
   * - Signature
     - ``{ownerfield=signature}``

Company Contact fields
***********************

See :doc:`Companies</companies/companies_overview>` for more information.

.. list-table:: 
   :widths: 100 100
   :header-rows: 1

   * - Variable name
     - Variable syntax
   * - Address Line 1 (Company)
     - ``{contactfield=companyaddress1}``
   * - Address Line 2 (Company)
     - ``{contactfield=companyaddress2}``
   * - Annual Revenue (Company)
     - ``{contactfield=companyannual_revenue}``
   * - City (Company)
     - ``{contactfield=companycity}``
   * - Country (Company)
     - ``{contactfield=companycountry}``
   * - Description (Company)
     - ``{contactfield=companydescription}``
   * - Email (Company)
     - ``{contactfield=companyemail}``
   * - Fax (Company)
     - ``{contactfield=companyfax}``
   * - Industry (Company)
     - ``{contactfield=companyindustry}``
   * - Name
     - ``{contactfield=companyname}``
   * - Number of Employees (Company)
     - ``{contactfield=companynumber_of_employees}``
   * - Phone Number (Company)
     - ``{contactfield=companyphone}``
   * - State (Company)	
     - ``{contactfield=companystate}``
   * - Website (Company)
     - ``{contactfield=companywebsite}``
   * - Zip Code (Company)
     - ``{contactfield=companyzipcode}``

.. tip::
  
   **Custom Company fields**

   The syntax for custom Company fields differs from core Company field syntax. You must **not** add the word 'Company' in the variable and instead treat it as a ``contactfield``.

Mautic Component tokens
***********************

See :doc:`Components</components/assets>` and :doc:`Manage Pages</components/landing_pages>` for more information.

.. list-table:: 
   :widths: 100 100
   :header-rows: 1
  

   * - Variable name
     - Variable syntax
   * - Asset link for Asset id#
     - ``{assetlink=25}``
   * - Focus Item id#
     - ``{focus=4}``
   * - Form id#
     - ``{form=83}``
   * - Landing Page link for page id#
     - ``{pagelink=17}``

Email specific tokens
*********************

See :doc:`Manage Emails</channels/emails>` for more information.

.. list-table:: 
   :widths: 100 100
   :header-rows: 1
  

   * - Variable name
     - Variable syntax
   * - Signature
     - ``{signature}``
   * - Subject
     - ``{subject}``
   * - Tracking pixel
     - ``{tracking_pixel}``
   * - Unsubscribe Text
     - ``{unsubscribe_text}``
   * - Unsubscribe URL
     - ``{unsubscribe_url}``
   * - Resubscribe URL
     - ``{resubscribe_url}``
   * - Web View Text
     - ``{webview_text}``
   * - Web View URL
     - ``{webview_url}``

Landing Page tokens
*********************

See :doc:`/components/landing_pages` for more information.

.. list-table:: 
   :widths: 100 100
   :header-rows: 1
  

   * - Variable name
     - Variable syntax
   * - Meta Description
     - ``{pagemetadescription}``
   * - Title
     - ``{pagetitle}``
   * - Language bar
     - ``{langbar}``
   * - Share Buttons
     - ``{sharebuttons}``
   * - Success Message
     - ``{successmessage}``

Preference Center Landing Page tokens
*************************************

See :doc:`customizing preference center</contacts/preference_center>` for more information.

.. list-table:: 
   :widths: 100 100
   :header-rows: 1
  

   * - Variable name
     - Variable syntax
   * - Lead Identifier
     - ``{leadidentifier}``
   * - Category List
     - ``{categorylist}``
   * - Segment List
     - ``{segmentlist}``
   * - Preferred Channel
     - ``{preferredchannel}``
   * - Channel Frequency
     - ``{channelfrequency}``
   * - Save Preferences
     - ``{saveprefsbutton}``

Dynamic Web Content tokens
**************************

.. list-table:: 
   :widths: 100 100
   :header-rows: 1
  

   * - Variable name
     - Variable syntax
   * - [Dynamic Content 1] | for example User-defined variable name
     - ``{dynamiccontent="Dynamic Content 1"}``

Contact Monitoring
******************

See :ref:`Contact Monitoring<Contact tracking>` for more information.

.. list-table:: 
   :widths: 100 100
   :header-rows: 1
  

   * - Variable name
     - Variable syntax
   * - Language
     - ``{language}``
   * - Title
     - ``{title}``
   * - Landing Page Title
     - ``{page_title}``
   * - URL
     - ``{url}``   
   * - Landing Page URL
     - ``{page_url}``
   * - Referrer
     - ``{referrer}``
   * - Tracking pixel
     - ``{tracking_pixel}``
   * - UTM Campaign
     - ``{utm_campaign}``
   * - UTM Content
     - ``{utm_content}``
   * - UTM Medium
     - ``{utm_medium}``
   * - UTM Source
     - ``{utm_source}``
   * - UTM Term
     - ``{utm_term}``

Search filters
**************

See the :ref:`Search<search>` page for more information.

Alphabetical list
*****************

.. list-table:: 
   :widths: 40 50
   :header-rows: 1

   * - Variable name
     - Variable syntax
   * - Address Line 1
     - ``{contactfield=address1}``
   * - Address Line 1 (Company)
     - ``{contactfield=address1}``
   * - Address Line 2
     - ``{contactfield=address2}``
   * - Address Line 2 (Company)
     - ``{contactfield=companyaddress2}``
   * - Annual Revenue (Company)
     - ``{contactfield=companyannual_revenue}``
   * - Asset link for Asset id#
     - ``{assetlink=25}``
   * - Attribution
     - ``{contactfield=attribution}``
   * - Attribution Date
     - ``{contactfield=attribution_date}``
   * - Category List (Preference Center)
     - ``{categorylist}``
   * - Channel Frequency (Preference Center)
     - ``{channelfrequency}``
   * - City
     - ``{contactfield=city}``
   * - City (Company)
     - ``{contactfield=companycity}``
   * - Country
     - ``{contactfield=country}``
   * - Country (Company)
     - ``{contactfield=companycountry}``
   * - Company
     - ``{contactfield=company}``
   * - Contact ID
     - ``{contactfield=id}``
   * - Description (Company)
     - ``{contactfield=companydescription}``
   * - [Dynamic Content 1]for example: user-defined variable name
     - ``{dynamiccontent="Dynamic Content 1"}``
   * - Email
     - ``{contactfield=email}``
   * - Email (Company)
     - ``{contactfield=companyemail}`` 
   * - Facebook
     - ``{contactfield=facebook}``
   * - Fax
     - ``{contactfield=fax}``
   * - Focus Item id#
     - ``{focus=4}``
   * - Form id#
     - ``{form=83}`` 
   * - Fax (Company)
     - ``{contactfield=companyfax}`` 
   * - First Name
     - ``{contactfield=firstname}``
   * - Foursquare
     - ``{contactfield=foursquare}``
   * - Google+
     - ``{contactfield=googleplus}``
   * - Instagram
     - ``{contactfield=instagram}``
   * - IP Address
     - ``{contactfield=ipAddress}``
   * - Landing Page link for page id#
     - ``{pagelink=17}``
   * - Language bar
     - ``{langbar}`` 
   * - Last Name
     - ``{contactfield=lastname}``
   * - Contact Identifier (Preference Center)
     - ``{leadidentifier}``  
   * - LinkedIn
     - ``{contactfield=linkedin}``
   * - Meta Description (Landing Page)
     - ``{pagemetadescription}``  
   * - Mobile Number
     - ``{contactfield=mobile}``
   * - Name (Company)	
     - ``{contactfield=companyname}``
   * - Number of Employees (Company)	
     - ``{contactfield=companynumber_of_employees}`` 
   * - Phone Number
     - ``{contactfield=phone}`` 
   * - Phone Number (Company)
     - ``{contactfield=companyphone}`` 
   * - Position
     - ``{contactfield=position}``
   * - Save Preferences (Preference Center)	
     - ``{saveprefsbutton}`` 
   * - Segment List (Preference Center)
     - ``{segmentlist}`` 
   * - Signature
     - ``{signature}`` 
   * - Skype
     - ``{contactfield=skype}``
   * - State
     - ``{contactfield=state}``
   * - State (Company)
     - ``{contactfield=companystate}``
   * - Subject
     - ``{subject}`` 
   * - Twitter
     - ``{contactfield=twitter}``
   * - Preferred Channel (Preference Center)
     - ``{preferredchannel}``
   * - Resubscribe URL
     - ``{resubscribe_url}``
   * - Share Buttons
     - ``{sharebuttons}``
   * - Success Message
     - ``{successmessage}`` 
   * - Title
     - ``{contactfield=title}``
   * - Title (Landing Page)
     - ``{pagetitle}`` 
   * - Unsubscribe Text
     - ``{unsubscribe_text}``
   * - Unsubscribe URL
     - ``{unsubscribe_url}`` 
   * - Website
     - ``{contactfield=website}``
   * - Website (Company)
     - ``{contactfield=companywebsite}``
   * - Web View Text
     - ``{webview_text}`` 
   * - Web View URL
     - ``{{webview_url}`` 
   * - Zip Code
     - ``{contactfield=zipcode}``
   * - Zip Code (Company)
     - ``{contactfield=companyzipcode}`` 
  






