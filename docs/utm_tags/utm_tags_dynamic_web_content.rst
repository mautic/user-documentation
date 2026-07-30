.. vale off

UTM tags in Dynamic Web Content blocks
######################################

.. vale on

When you add UTM fields to a Dynamic Web Content - DWC - block in Mautic, you aren't filtering which Contacts see the block. You are tagging the outbound links inside it. Mautic automatically appends your UTM parameters to every trackable link in the DWC content when the block renders on the Landing Page.

This means you can track in Google Analytics, or any other analytics tool, exactly how many people clicked links coming from that specific DWC block, without manually editing each URL in your content. To use this, you need permission to edit Dynamic Web Content in Mautic, a DWC block with at least one outbound link, and an analytics tool set up on the destination website to receive UTM-tagged traffic.

.. vale off

Configure DWC blocks
********************

.. vale on

#. Open the DWC block you want to configure by going to **Components** > **Dynamic Web Content** and clicking the block name.

#. Locate the UTM fields in the block settings. These are separate from the content body and the Segment or filter conditions.

#. Fill in the UTM fields you want to apply to links inside this block:

   * ``Campaign``, the Campaign name for example, ``spring_sale_2026``
   * ``Medium``, the Channel type - for example, ``website``
   * ``Source``, where you place the block - for example, ``dwc``
   * ``Content`` is optional. Use it if you need finer-grained tracking

#. Save the DWC block.

#. Embed the block on the website.

#. Test by visiting the Landing Page as an anonymous visitor, hovering over or clicking a link inside the DWC block, and confirming the destination URL now includes your UTM parameters, for example:

   .. code-block:: text

      https://yoursite.com/landing?utm_campaign=spring_sale_2026&utm_medium=website&utm_source=dwc

A DWC block configured with ``utm_campaign=spring_sale_2026``, ``utm_medium=website``, and ``utm_source=dwc`` produced this URL. The ``utm_source`` value ``dwc`` is a short, descriptive token that makes it immediately clear in analytics Reports that the traffic originated from a DWC block rather than an Email, paid ad, or other Channel.

The ``utm_medium=website`` value reflects that the block renders on a website Landing Page rather than inside an Email. Keeping the medium accurate allows your analytics tool to correctly classify this traffic in its Channel groupings. The ``utm_campaign`` value ties this block's traffic to the same named Campaign you use in your Emails and ads, so all Campaign-level traffic aggregates cleanly under one name in your Reports.

.. warning::

   If a link in your DWC content already has UTM parameters hard-coded in it, Mautic may append a second set, resulting in a malformed URL. Keep links in DWC content clean, no manual UTM parameters, and let the block-level fields do the tagging.

.. tip::

   Use consistent naming across blocks. If one block uses ``source=dwc`` and another uses ``source=dynamic-web-content``, your analytics data splits across two rows and becomes harder to compare.

When the setup is working correctly, links inside the DWC block include UTM parameters when rendered on the Landing Page. Clicking through and checking the destination URL in the browser address bar shows the correct parameters. Traffic from that block appears as a distinct source or medium combination in Google Analytics.

.. seealso::

   * :doc:`utm_tags_overview`
   * :doc:`utm_tags_emails`
