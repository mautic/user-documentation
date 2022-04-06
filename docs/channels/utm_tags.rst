UTM tags
########

UTM tags are referred to as parameters or short text codes. When these tags are added to URLs or links, marketers can track performance, segment audiences, and report on website traffic from various sources. Marketers can also use UTM tags with Google Analytics to clearly understand the effectiveness of their marketing content and ROI for marketing campaigns.

Key benefits of using UTM tags
******************************

With UTM tags, you can:

- Track the value of marketing campaigns and measure ROI
- Get precise data about conversion and traffic sources
- Test the effectiveness of marketing content through A/B testing

Using UTM tags in Mautic
************************

To use UTM tags with Google Analytics where they appear in your Google Analytics Dashboard, you must install your Google Analytics tracking code on the page you are linking to. This synchronizes with your Google Analytics Dashboard and records the UTM tags.

If you use a Mautic landing page, you must go to Settings > Configuration > Tracking Settings, and add your Google Analytics ID.

  .. image:: images/utm_tags/add_ga_code.png
    :width: 400
    :alt: Screenshot showing the option to add Google Analytics code

If you use a non-Mautic landing page, you must manually embed the Google Analytics tracking script on the third-party page.

Mautic users can automatically append UTM tags to all links in an Email or Focus Item. For other Channels, you can make the link trackable by including UTM values in the URL address. When a Contact clicks a link in an Email or Focus Item, Mautic records UTM tags and stores them in the Contact record. You can find the details on the Contact Event History page. After the UTM tags are recorded, you can use them as filters in Segments.

UTM tags can be used to track Contacts who convert from Dynamic Web Content slots in Emails, and determine the lead source in Google Analytics or Mautic reports. You can also use them as columns in a report by selecting UTM codes as the data source.

The following table lists the Google Analytics UTM tags:

.. list-table:: Title
   :widths: 50 50
   :header-rows: 1

   * - UTM tags
     - Description
   * - Campaign Source
     - The referring source of the web activity. It indicates the social network, search engine, newsletter name, or any other specific source driving the traffic.  
        * Examples: facebook, twitter, blog, newsletters
        * UTM code: utm_source
        * Sample code: utm_source=facebook
   * - Campaign Medium
     - UTM tags — Mautic Documentation
         * Examples: cpc, organic_social
         * UTM code: utm_medium
         * Sample code: utm_medium=paid_social
   * - Campaign Name
     - The specific promotion or campaign title that you want to track.
         * Examples: summer_sale, free_trial
         * UTM code: utm_campaign
         * Sample code: utm_campaign=summer_sale
   * - Campaign Content
     - The assets within the messages. This non-configurable value auto-populates with the content asset identifier associated with the specific asset.
   * - Campaign Term
     - The keyword to search a campaign. This non-configurable value auto-populates within the link text and tracks links within the messages.

.. note::
    You do not need to fill all the options. You can use one, or a few, or all of them, as required.

Using UTM tags in Emails
************************

Mautic supports UTM tagging in Emails. Mautic can automatically append UTM tags to all links in an Email by entering the appropriate campaign values in the fields provided.

#. On the Mautic home page, click Channels > Emails.
#. On the Emails page, create a new Email or edit an existing Email. (Optional) If you choose to edit an existing Email, click the Email and then click Edit.
#. Locate the Google Analytics UTM tags section on the bottom right.
#. Enter the appropriate information in the fields.
#. Click Apply.

.. warning:: 
    * When adding links in emails, use the edit link icon in the builder.
    * When adding links in Code Mode, use the <a href> tag.
    * All links must include a trailing slash. Otherwise, UTM codes will not be appended.

Using UTM tags in focus items
*****************************

Mautic supports UTM tagging in :doc:`/channels/focus_items`.  Mautic can automatically append UTM tags to all links in a Focus Item by entering the appropriate values in the field provided.

#. On the Mautic home page, click Channels > Focus Items
#. On the Focus Items page, create a new focus item or open an existing one.
#. Locate the Google Analytics UTM tags section on the bottom right.
#. Enter the appropriate information in the fields.
#. Click Apply.