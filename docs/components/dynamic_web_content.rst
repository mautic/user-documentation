.. vale off

Dynamic Web Content
###################

.. vale on

Dynamic Web Content is one of several methods Mautic uses to personalize the web experience for Contacts. Marketers can display different content to different people in specific areas of a webpage. Mautic Users may want to personalize content based on data collected about the website visitor. Even anonymous Contacts may see Dynamic Content, if you've collected any information about them - such as location data.

Preparation
***********

Before you consider using Dynamic Web Content, consider:

- where on your website would you include personalized content?
- What audience/s do you plan to personalize content for?
- Do you collect the information required to accurately filter your Contacts in this way?


Website configuration
*********************

Once you've decided where on your website to display the content, you must create an area to add the content. Mautic is platform-agnostic - you can add slots into any website you have created. To do this, create an HTML slot to display the Dynamic Web Content.

Change ``myslot`` in ``data-param-slot-name="myslot"`` to the Requested Slot Name of your Dynamic Web Content item:

.. code-block::

    <div data-slot="dwc" data-param-slot-name="myslot">
    <h1>Dynamic web content for myslot</h1>
    </div>

You can add your own default content between the ``<div>`` tags to ensure that content displays when the filters aren't matching - for example with new anonymous visitors or a Contact that doesn't match the criteria you have specified.

Content Management System Plugins for Mautic also have specific ways to embed the content, for example:

- **Joomla** - ``{mautic type="content" slot="slotname"} Insert default content {/mautic}``
- **WordPress** - ``[mautic type="content" slot="slotname"] Insert default content [/mautic]``

Mautic configuration
********************

.. warning::
    It's important to ensure that you configure your CORS settings correctly when using Dynamic Web Content - if this isn't set up your content won't display. Read more in :ref:`CORS Settings`.

.. vale off

Creating Dynamic Web Content slots
==================================

.. vale on

Mautic provides both Campaign-based and filter-based Dynamic Web Content. To create either type:

#. Navigate to the Components > Dynamic Content section
#. Click New to create a new slot

.. image:: images/dynamic_content/dwc_create.png
  :width: 400
  :alt: Create a new Dynamic Web Content slot

The following values are available:

- **Internal name** - This is how the slot displays in your list of Dynamic Web Content slots. You should include information on what you're personalizing - for example, country - and the content in the slot - for example, United States. If you're creating a personalized slot for people in the United States, you can name the slot Country - United States. If you plan to have more than one personalized content slot for the same audience across your website, include the page title or other identifying information for the particular slot.

.. vale off

#. **Content** - Use the WYSIWYG editor to create the Dynamic Web Content slot. You may include images and videos. If you prefer HTML, click the ``</> Source`` icon in the toolbar to switch to the code view. Mautic's Dynamic Web Content supports tokens in the same way as Landing Pages or Emails. To add a token, start typing with the ``{`` character and available tokens are displayed. These include:

   *  Contact field: {contactfield=fieldalias}
   *  Landing page link: {pagelink=ID#}
   *  Asset link: {assetlink=ID#}
   *  Form: {form=ID#}
   *  Focus item: {focus=ID#}

.. vale on

**Category** - Assign a Category to help you organize your Dynamic Web Content items. See :doc:`/categories/categories-overview` for more information.

- **Language** - the language of this Dynamic Web Content - can be helpful in multilingual marketing Campaigns and for reporting purposes

- **Is a translation of** - If you're creating a slot in a second language translation - for example to use on a multilingual website - select the original base language Dynamic Web Content item which you're translating. The same slot displays the appropriate language based on the Campaign or filters set, but Mautic shows the translated content if a visitor is viewing the page in a different browser language.

- **Published** - Whether the Dynamic Web Content item is available for use - published - or not available - unpublished

- **Is Campaign based** - if set to Yes, Mautic pushes this Dynamic Web Content to Contacts through a Campaign. When set to No, you can specify filters for visitors to see the content, and additional fields for Slot Name and Order/Priority become available.

- **Requested slot name** - shown if using non-Campaign based Dynamic Web Content, this allows you to specify the slot name on your website in which the Contact sees the content. You can search for an existing slot name or type a new one.

- **Order/Priority** - shown if using non-Campaign based Dynamic Web Content, this allows you to specify the display order when multiple Dynamic Web Content items share the same slot name. Select an order to place your new Dynamic Content right after it in the list. To set it as the first item, choose 'Put at beginning'. Mautic evaluates the filters of Dynamic Web Content items in the specified order until it finds a match.

.. vale off

**Publish at (date/time)** - This allows you to define the date and time at which this Dynamic Web Content item is available for displaying to Contacts

**Unpublish at (date/time)** - This allows you to define the date and time at which this Dynamic Web Content item ceases to be available for displaying to Contacts.

.. vale on

**UTM tags** - Mautic can append UTM tags to any links and Form submissions. See :doc:`/channels/utm_tags` for more information.

.. vale off

Viewing Dynamic Web Content variations
======================================

.. vale on

When you have multiple Dynamic Web Content items sharing the same slot name, you can view all variations from the detail page of any item in that slot:

#. Navigate to the Components > Dynamic Content section
#. Click on any Dynamic Web Content item that uses a shared slot name
#. Click the **Variations** tab to see all other Dynamic Web Content items with the same slot name

The Variations tab displays items in descending order of their display order value, helping you understand the priority in which Mautic evaluates filters.

.. vale off

Using Dynamic Web Content tokens in Emails
==========================================

.. vale on

Non-Campaign based Dynamic Web Content items can also be used as tokens in Emails. This allows you to personalize Email content based on Contact filters, similar to how Dynamic Web Content works on web pages.

Token format
------------

The Dynamic Web Content token format for Emails is:

.. code-block::

    {dwc=slot-name}Your default content here{/dwc}

The token consists of three parts:

- **Opening tag**: ``{dwc=slot-name}`` where ``slot-name`` is your Dynamic Web Content slot name
- **Default content**: The fallback text displayed when no filters match - this is **required** and cannot be empty
- **Closing tag**: ``{/dwc}``

.. warning::
    The default content between the opening and closing tags is mandatory. Tokens without default content - such as ``{dwc=slot-name}{/dwc}`` or ``{dwc=slot-name}`` - are invalid and will cause a validation error when saving the Email.

Adding tokens to Emails
-----------------------

To use Dynamic Web Content tokens in Emails:

#. Create a Dynamic Web Content item with **Is Campaign based** set to **No** and content type set to **Text**
#. In the Email builder, place your cursor where you want to insert the Dynamic Content
#. Type ``{`` to open the token picker, or use the **Insert token** dropdown
#. Select the Dynamic Web Content token from the list - it displays as ``DWC:slot-name``
#. The token is inserted as ``{dwc=slot-name}Default content goes here{/dwc}``
#. Edit the default content between the tags to specify your fallback text
#. The token can be used in both the Email subject line and the Email body

When Mautic sends the Email, it evaluates the Contact against the filters of each Dynamic Web Content item in the specified slot - in display order - and replaces the token with the content of the first matching item. If no filters match, the default content you specified between the tags is displayed.

.. note::
    Only Dynamic Web Content items with content type **Text** are available as Email tokens. Items with content type **HTML** cannot be used in Emails.

.. note::
    Only published Dynamic Web Content items are evaluated. Unpublished items are skipped even if their filters would match the Contact.

.. note::
    Dynamic Web Content token statistics - such as how many times a token was replaced - are tracked and available in the Dynamic Web Content reports.

Campaign-based Dynamic Web Content
**********************************

.. vale on

Creating the request
====================

Use a Campaign Decision for ``Request Dynamic Content`` to use Campaign-based Dynamic Web Content. The Campaign Decision checks if a Campaign member visits a page where a Dynamic Content slot is. Visitors to a page with a Dynamic Content slot receive the Dynamic Content.

The following fields are available:

- **Name** - the Campaign event. Start the name with something like ``Req-DWC``: so when you're looking at Campaign Reports, you can see the event type.

- **Requested Slot Name** - Mautic checks for the slot name. You can see how many Contacts got to the Campaign event where you're checking if their visits request the slot.

As an example, these two fields might look like: ``Req-DWC: Country-Header`` in the Contact history. The requested slot name is the slot Mautic looks for on the page. If it's on a 3rd-party page, it'll be in the code you use to add the Dynamic Content slot to your page. If it's on a Mautic Landing Page, define the slot name on the Landing Page.

- **Select Default Content** - choose the content which displays to visitors who don't meet the conditions set at the next step of the Campaign. Users may see the default content first, before Mautic pushes the Dynamic Content.

.. image:: images/dynamic_content/dwc_campaign_request.png
  :width: 400
  :alt: Create a new Dynamic Web Content request in a Mautic Campaign

Creating the filters
====================

Once created, you can add filters on the affirmative path to determine which Contacts see the different variations. This happens with Conditions - read more in :doc:`/campaigns/creating_campaigns`.

As an example, you might use the condition of ``Country = United States of America`` to filter only people located in the country.

Pushing the Dynamic Web Content
===============================
Once the relevant filters are in place, you can add the Campaign action of 'Push Dynamic Content' which triggers Mautic to send the relevant content to the Contacts matching the filters.

.. image:: images/dynamic_content/dwc_campaign_push.png
  :width: 400
  :alt: Push Dynamic Web Content to Contact in a Mautic Campaign

With all this in place, it might look something like this:

.. image:: images/dynamic_content/dwc_campaign.png
  :width: 400
  :alt: Dynamic Web Content to Contact in a Mautic Campaign

You may wish to decide on a naming convention for your Campaigns, for example prefixing with ``DWC:`` when you're pushing Dynamic Web Content.

.. vale off

Filter-based Dynamic Web Content
********************************

.. vale on

Filters are often easier to work with and can be more reliable, as they don't rely on the triggering of a Campaign cron job.

Creating filters
================

#. When creating the Dynamic Web Content item, select No for the 'Is Campaign based' switch which displays the filters tab.

#. Use the filters to configure the criteria that Contacts must meet to see the Dynamic Web Content slot.

#. Provide the content in the slot within the text editor area. Mautic displays this content when the filters match.

Managing multiple variations
============================

When you have multiple filter-based Dynamic Web Content items for the same slot:

#. Create each variation with the same **Requested slot name**
#. Set the **Order/Priority** to control the evaluation sequence
#. Mautic checks filters in display order and uses the first matching content

This is useful for creating content hierarchies - for example, showing specific content to VIP customers first, then falling back to content for regular customers, and finally showing default content for everyone else.

.. vale off

Implementing Dynamic Web Content
********************************

.. vale on

Default content
===============

Mautic displays the default content when the visitor doesn't match any of the filter criteria, or the visitor isn't a tracked/identified Contact. It's important to have something in the default content, rather than an empty space.

For Campaign-based Dynamic Web Content, you specify the default content when you configure the Request Dynamic Content decision. In filter-based Dynamic Web Content, you create the default content on the page where you are inserting the slot, and Mautic replaces it with the Dynamic Content if the filter match.

.. note::
    If you're using Focus Items as your Dynamic Web Content and only showing specific Focus Items to specific audiences, you don't need to have any default content, as Focus Items don't physically take up space on your page.

.. vale off

Dynamic Web Content reports
***************************

.. vale on

Mautic includes a built-in report type for Dynamic Web Content that allows you to analyze performance and usage:

#. Navigate to Reports and click New
#. Select **Dynamic Web Content** as the report data source
#. Choose from available columns including:

   * Dynamic Content name, slot name, and display order
   * Statistics such as sent count and date sent
   * Contact information for tracking individual interactions
   * Filter and Category information

Use these reports to track which Dynamic Web Content items are being displayed most frequently and which filters are matching Contacts.

.. vale off

Managing Dynamic Web Content via API
************************************

.. vale on

You can manage Dynamic Web Content display order programmatically via the Mautic API. To update the slot name and display order of a Dynamic Web Content item:

.. code-block::

    PUT api/dynamiccontents/{id}/edit

    {
        "isCampaignBased": false,
        "slotName": "header-slot",
        "displayOrder": 1
    }

This is useful for automated workflows where you need to adjust content priority based on external factors.

.. vale off

