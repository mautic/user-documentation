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

- **Internal name** - This is how the slot displays in your list of Dynamic Web Content slots. You should include information on what you're personalizing - for example, country - and the content in the slot - for example, United States. If you're creating a personalized slot for people in the United States, you can name the slot Country - United States. If you plan to have more than one personalized content slot for the same audience across your website, include the website section or other identifying information for the particular slot.

- **Content** - Use the WYSIWYG editor to create the Dynamic Web Content slot. You may include images and videos. If you prefer HTML, click the ``</> Source`` icon in the toolbar to switch to the code view. Mautic's Dynamic Web Content supports tokens in the same way as Landing Pages or Emails. To add a token, start typing with the ``{`` character and Mautic displays the available tokens. These include:

  * Contact field - ``{contactfield=fieldalias}``
  * Landing Page link - ``{pagelink=ID#}``
  * Asset link - ``{assetlink=ID#}``
  * Form - ``{form=ID#}``
  * Focus Item - ``{focus=ID#}``

- **Category** - Assign a Category to help you organize your Dynamic Web Content items. See :doc:`/categories/categories-overview` for more information.

- **Language** - the language of this Dynamic Web Content - can be helpful in multilingual marketing Campaigns and for reporting purposes

- **Is a translation of** - If you're creating a slot in a second language translation - for example to use on a multilingual website - select the original base language Dynamic Web Content item which you're translating. The same slot displays the appropriate language based on the Campaign or filters set, but Mautic shows the translated content if a visitor views the website in a different browser language.

- **Available for use** - Whether the Dynamic Web Content item is available for use. Set this to **No** to make the item unavailable.

- **Is Campaign based** - if set to Yes, Mautic pushes this Dynamic Web Content to Contacts through a Campaign. When set to No, you can specify filters for visitors to see the content, and the **Requested slot name** and **Order/Priority** fields become available.

- **Requested slot name** - shown if using non-Campaign based Dynamic Web Content, this allows you to specify the slot name on your website in which the Contact sees the content. Search for an existing slot name or enter a new one.

- **Order/Priority** - shown if using non-Campaign based Dynamic Web Content. When several Dynamic Web Content items share the same slot name, this sets the order in which Mautic evaluates their filters. Select an existing item to place this item right after it.

  .. vale off

  To place this item first, select **Put at Beginning**.

  .. vale on

  Mautic evaluates the filters of each item in the slot in ascending order - lowest first - and displays the first item whose filters match the Contact.

  .. vale off

- **Publish at (date/time)** - This allows you to define the date and time at which this Dynamic Web Content item is available for displaying to Contacts.

- **Unpublish at (date/time)** - This allows you to define the date and time at which this Dynamic Web Content item ceases to be available for displaying to Contacts.

  .. vale on

- **UTM tags** - Mautic can append UTM tags to tracked links in Dynamic Web Content. See :doc:`/utm_tags/utm_tags_overview` for more information.

.. vale off

Viewing Dynamic Web Content variations
======================================

.. vale on

When more than one filter-based Dynamic Web Content item shares the same slot name, the detail view of each of those items includes a **Variations** tab. To view all items in a slot:

#. Navigate to **Components > Dynamic Content**.
#. Select a Dynamic Web Content item that shares its slot name with other items.
#. Select the **Variations** tab.

The tab lists every item with that slot name, including the item you're viewing, which Mautic highlights. The **Internal Order Number** column shows each item's Order/Priority value. The tab sorts items from the highest number to the lowest, which is the reverse of the order in which Mautic evaluates filters - lowest first.

.. vale off

Using Dynamic Web Content tokens in Emails
==========================================

.. vale on

You can add filter-based Dynamic Web Content to Emails as a token, so each Contact sees content that matches their data in the Email subject line or body - the same way Dynamic Web Content personalizes a webpage.

Token format
------------

A Dynamic Web Content token for Emails has this format:

.. code-block::

    {dwc=slot-name}Your default content here{/dwc}

The token consists of three parts:

* ``{dwc=slot-name}`` - the opening tag, where ``slot-name`` is your Dynamic Web Content slot name.
* Default content - the fallback text that Mautic displays when no filters match. You can't leave it empty.
* ``{/dwc}`` - the closing tag.

.. warning::

   Mautic only accepts a token that has default content between the opening and closing tags. If you save an Email that contains a token without default content - such as ``{dwc=slot-name}{/dwc}`` or ``{dwc=slot-name}`` - Mautic displays a validation error.

Inserting a token
-----------------

To use Dynamic Web Content in an Email:

#. Create a Dynamic Web Content item with **Is Campaign based** set to **No** and **Type** set to **Text**.
#. In the Email builder, place your cursor in the subject line or body where you want the Dynamic Web Content to appear.
#. Enter ``{`` to open the token list, or use the **Insert token** menu.
#. Select the Dynamic Web Content token, which displays as ``DWC:slot-name``. Mautic inserts ``{dwc=slot-name}Default content goes here{/dwc}``.
#. Replace ``Default content goes here`` with your fallback text.

When Mautic sends the Email, it evaluates the Contact against the filters of each Dynamic Web Content item in the slot, lowest Order/Priority first, and replaces the token with the content of the first matching item. If no filters match, Mautic displays the default content between the tags.

.. note::

   * Only Dynamic Web Content items with the **Text** type are available as Email tokens. You can't use **HTML** items in Emails.
   * Mautic only evaluates Dynamic Web Content items that are available for use. It skips unavailable items even if their filters match the Contact.
   * Mautic tracks Dynamic Web Content token usage and makes it available in Dynamic Web Content Reports.

.. vale off

Campaign-based Dynamic Web Content
**********************************

.. vale on

Creating the request
====================

Use a Campaign Decision for ``Request Dynamic Content`` to use Campaign-based Dynamic Web Content. The Campaign Decision checks if a Campaign member visits a part of your website that contains a Dynamic Content slot. Visitors who reach that slot receive the Dynamic Content.

The following fields are available:

- **Name** - the Campaign event. Start the name with something like ``Req-DWC``: so when you're looking at Campaign Reports, you can see the event type.

- **Requested Slot Name** - Mautic checks for the slot name. You can see how many Contacts got to the Campaign event where you're checking if their visits request the slot.

As an example, these two fields might look like: ``Req-DWC: Country-Header`` in the Contact history. The requested slot name is the slot Mautic looks for on your website. If it's on a third-party website, it's in the code you use to add the Dynamic Content slot to your website. If it's on a Mautic Landing Page, define the slot name on the Landing Page.

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

Filters are often easier to work with and can be more reliable, as they don't rely on the triggering of a Campaign Cron job.

Creating filters
================

#. When creating the Dynamic Web Content item, select No for the 'Is Campaign based' switch which displays the filters tab.

#. Use the filters to configure the criteria that Contacts must meet to see the Dynamic Web Content slot.

#. Provide the content in the slot within the text editor area. Mautic displays this content when the filters match.

Managing multiple variations
============================

To show different content to different audiences in the same slot, create several filter-based Dynamic Web Content items:

#. Create each item with the same **Requested slot name**.
#. Set each item's **Order/Priority** to control the order in which Mautic evaluates the filters.

Mautic checks each item's filters, lowest Order/Priority first, and displays the content of the first item that matches. Use this to build a content hierarchy - for example, show specific content to VIP customers first, then fall back to content for regular customers, and finally show default content to everyone else.

.. vale off

Implementing Dynamic Web Content
********************************

.. vale on

Default content
===============

Mautic displays the default content when the visitor doesn't match any of the filter criteria, or the visitor isn't a tracked/identified Contact. It's important to have something in the default content, rather than an empty space.

For Campaign-based Dynamic Web Content, you specify the default content when you configure the Request Dynamic Content decision. In filter-based Dynamic Web Content, you create the default content in the website content where you're inserting the slot, and Mautic replaces it with the Dynamic Content if the filter match.

.. note::
    If you're using Focus Items as your Dynamic Web Content and only showing specific Focus Items to specific audiences, you don't need to have any default content, as Focus Items don't physically take up space on your website.

.. vale off

Dynamic Web Content reports
***************************

.. vale on

To see where and when Mautic used your Dynamic Web Content items, create a Report with the Dynamic Web Content data source:

#. Navigate to **Reports** and select **New**.
#. In **Data Source**, select **Dynamic Web Content**.
#. Choose from the available columns, which include:

   * Dynamic Web Content name, Slot Name, and Order/Priority
   * Date Sent and Target Location - Subject Line or Body
   * Contact information for tracking individual interactions
   * Category information

.. vale off

Managing Dynamic Web Content via API
************************************

.. vale on

You can update a Dynamic Web Content item's slot name and Order/Priority through the Mautic API - for example, to adjust content priority from an automated workflow. Replace ``example.com`` with your Mautic instance domain and include the required authentication headers - see :doc:`/authentication/authentication`.

Use ``PATCH`` so Mautic only changes the fields you send. A ``PUT`` request replaces the whole item and resets any field you leave out.

.. code-block:: bash

    curl -X PATCH 'https://example.com/api/dynamiccontents/{id}/edit' \
    -H 'Authorization: Bearer YOUR_ACCESS_TOKEN' \
    -H 'Content-Type: application/json' \
    -d '{
        "isCampaignBased": false,
        "slotName": "header-slot",
        "displayOrder": 1
    }'

.. vale off

