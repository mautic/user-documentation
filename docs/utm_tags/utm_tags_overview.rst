.. vale off

UTM tags overview
#################

.. vale on

UTM (Urchin Tracking Module) parameters are short tags appended to URLs that tell analytics tools where a visitor came from, which Campaign, Channel, source, and so on. has native support for UTM tags across a wide range of its features, but **how UTM data flows through the system isn't uniform**. Different features capture, generate, store, and use UTM data in different ways, and confusing them leads to gaps in tracking, empty fields, or misplaced expectations.

Understanding UTM parameters
****************************

The five standard UTM parameters are:

.. list-table::
   :widths: 20, 80
   :header-rows: 1

   * - Parameter
     - Description
   * - **utm_source**
     - The referring source of the web activity. Indicates the social network, search engine, newsletter name, or any other specific source driving the traffic. Examples: ``facebook``, ``twitter``, ``blog``, ``newsletter``
   * - **utm_medium**
     - The Channel or method of delivery. Examples: ``email``, ``cpc``, ``organic_social``, ``organic``, ``social``
   * - **utm_campaign**
     - The specific promotion or marketing initiative title that you want to track. Examples: ``summer_sale``, ``free_trial``, ``spring_sale_2026``
   * - **utm_content**
     - Optional, used to distinguish between multiple versions of the same message or content variant within a Campaign. Examples: ``welcome_email_1``, ``banner_version_a``
   * - **utm_term**
     - Optional, used to track search keywords or content categories. Auto-populated in some contexts.

You don't need to fill all five parameters. Use one, a few, or all as required for your tracking needs.

Using UTM tags in Mautic
************************

To use UTM tags with Google Analytics where they appear in your Google Analytics Dashboard, you must install your Google Analytics tracking code on the resource you are linking to. This synchronizes with your Google Analytics Dashboard and records the UTM tags.

If you use a Mautic Landing Page, you must go to Settings > Configuration > Tracking Settings, and add your Google Analytics ID.

.. image:: ../channels/images/utm_tags/add_google_analytics_id.png
   :alt: Screenshot showing the option to add your Google Analytics ID

If you use a non-Mautic Landing Page, you must manually embed the Google Analytics tracking script on the third-party Page.

Feature groups
**************

Inbound capture (recording UTM data)
=====================================

These features read UTM parameters from URLs and save them to a Contact's record. For this to work, the URL the Contact lands on must already contain UTM parameters, Mautic doesn't add them, it only reads what's there. The link that brings the Contact to that Page is always responsible for carrying the UTM values.

.. list-table::
   :header-rows: 1
   :widths: 30, 35, 35

   * - Feature
     - How it triggers
     - Notes
   * - **Form action "Record UTM tags"**
     - Visitor submits a Mautic Form that has this action configured. Reads UTM parameters from the query string of the Page the Form is on, with Page referrer as fallback.
     - See :doc:`utm_tags_forms`
   * - **Tracking script / pixel on external site**
     - The tracking script fires on an external Page. The browser call carries the full Page URL, if it contains UTM parameters, they're captured.
     - See :doc:`utm_tags_landing_pages`
   * - **Mautic Landing Page visit**
     - Someone visits a Page built inside Mautic (``/Page/slug``). UTM parameters are read from the URL query string.
     - See :doc:`utm_tags_landing_pages`
   * - **Asset download**
     - On direct Asset download via a UTM-tagged URL, stores UTM parameters on the download record only, not on the Contact profile. UTM data isn't captured when the download trigger by a Form action.
     - See :doc:`utm_tags_asset_downloads`

Outbound tagging (appending UTM to links)
==========================================

These features take UTM values you configure inside Mautic and automatically stamp them onto every tracked link in the content when it's delivered or rendered. There is nothing to add to the links themselves, you fill in the UTM fields on the content object and handles the appending.

.. list-table::
   :header-rows: 1
   :widths: 25, 30, 45

   * - Feature
     - Where UTM configure
     - How it triggers
   * - **Email**
     - UTM fields on the Email record
     - When an Email send or previewed. Every tracked link in the Email body gets the configured UTM parameters appended.
   * - **Dynamic Web Content**
     - UTM fields on the Dynamic Web Content (DWC) block
     - When a Dynamic Web Content (DWC) block render for a visitor (either via Campaign or slot-based). Tracked links in the block content have UTM parameters appended at render time.
   * - **Push notifications**
     - UTM fields on the notification
     - When a web/mobile push notification send. Tracked URLs inside the notification payload have UTM parameters appended before delivery.
   * - **Focus Items**
     - UTM fields on the Focus Item configuration
     - When a Focus Item displays on a webpage. Tracked links inside the Focus Item content have UTM parameters appended when rendered.

Using UTM data for targeting
=============================

Once UTM data has capture on Contact profiles, it may use to control who include in a Segment or how a Contact route through a Campaign.

.. list-table::
   :header-rows: 1
   :widths: 25, 35, 40

   * - Feature
     - What it does
     - How it triggers
   * - **Segment filters**
     - Includes or excludes Contacts from a Segment based on UTM values ever recorded on them.
     - When a Segment is evaluated. All five UTM fields (``utm_source``, ``utm_medium``, ``utm_campaign``, ``utm_content``, ``utm_term``) are available as filter conditions.
   * - **Campaign conditions**
     - Branches Campaign flow based on UTM field values on the Contact.
     - When a Campaign evaluates a "Contact field value" condition node that references a UTM field.

Displaying UTM data
====================

Captured UTM data surfaces in several places for visibility and Reporting.

.. list-table::
   :header-rows: 1
   :widths: 25, 75

   * - Feature
     - What it does
   * - **Contact timeline**
     - Each time UTM tags are saved to a Contact, a timeline entry appears. The icon changes based on ``utm_medium`` (Email, social, ad, Cost Per Click (CPC), etc.). The label uses ``utm_campaign`` if available.
   * - **Reports**
     - A dedicated Report source joins the UTM tags table with Contacts, letting you build Reports filtered or grouped by any UTM field.
   * - **Asset Reports**
     - Asset download Reports expose all five UTM fields.

REST API
=========

Two REST endPoints manage UTM data directly on Contacts:

- ``POST /contacts/{id}/utm/add``, accepts the full UTM payload (all five tags plus ``url``, ``referrer``, ``User_agent``, etc.)
- ``POST /contacts/{id}/utm/{utmid}/remove``, removes existing UTM tags from a Contact record

How to understand each group
*****************************

The most common source of confusion with Mautic's UTM system is treating all features as equivalent. They aren't:

- **Inbound capture** depends entirely on UTM parameters being in the URL. Mautic reads, it doesn't write.
- **Outbound tagging** is the reverse, writes UTM parameters onto links, based on what you configured on the content object.
- **Targeting** only works with data that was already captured inbound. You can't Segment or branch on UTM data that was never recorded on the Contact.
- **Asset download UTM data** lives in a separate table and doesn't feed into Contact profiles, Segment filters, or Campaign conditions.

.. seealso::

   - :doc:`utm_tags_landing_pages`
   - :doc:`utm_tags_asset_downloads`
   - :doc:`utm_tags_forms`
   - :doc:`utm_tags_emails`
   - :doc:`utm_tags_dynamic_web_content`
   - :doc:`utm_tags_campaign_conditions`
   - :doc:`utm_tags_segment_filters`
