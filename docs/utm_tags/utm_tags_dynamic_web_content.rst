.. vale off

UTM tags in Dynamic Web Content blocks
######################################

.. vale on

When you add UTM fields to a Dynamic Web Content - DWC - block in Mautic, you aren't filtering which Contacts see the block. Instead, you are tagging the outbound links inside it. Mautic automatically appends your UTM parameters to every trackable link in the DWC content when the block renders on the Landing Page.

This enables you to track in Google Analytics, or any other analytics tool, exactly how many people clicked links coming from that specific DWC block, without manually editing each URL in your content. To use this, you need permission to edit Dynamic Content in Mautic, a DWC block with at least one outbound link, and an analytics tool set up on the destination website to receive UTM-tagged traffic.

.. vale off

Configure DWC blocks
********************

.. vale on

#. Open the DWC block and the edit details:

   #. Go to **Components** > **Dynamic Content**.
   #. Click the name of the DWC block you want to modify.
   #. Click **Edit**.

#. Locate the **UTM tags** dropdown menu in the right-hand panel at the bottom. Expanding this section exposes the UTM parameter fields, which sit separately from the content body and filter conditions.

#. Fill in the UTM fields you want to apply to links inside this block:

   * **Campaign source**: where you place the block, for example, ``dwc``
   * **Campaign medium**: the Channel type, for example, ``website``
   * **Campaign name**: the Campaign name, for example, ``spring_sale_2026``
   * **Campaign content**: optional field for finer-grained tracking

#. Save the DWC block.

#. Embed the block on your website.

#. Test by visiting the Landing Page as an anonymous visitor, hovering over or clicking a link inside the DWC block, and confirming the destination URL now includes your UTM parameters, for example:

   .. code-block:: text

      https://example.com/landing?utm_campaign=spring_sale_2026&utm_medium=website&utm_source=dwc

A DWC block configured with ``utm_campaign=spring_sale_2026``, ``utm_medium=website``, and ``utm_source=dwc`` produces this URL. The ``utm_source`` value ``dwc`` is a short, descriptive token that makes it immediately clear in analytics Reports that traffic originated from a DWC block rather than an Email, paid ad, or other Channel.

The ``utm_medium=website`` value reflects that the block renders on a website Landing Page rather than inside an Email. Keeping the medium accurate allows your analytics tool to classify traffic into the correct Channels. The ``utm_campaign`` value ties this block's traffic to the same named Campaign you use in Emails and ads, aggregating all Campaign-level traffic under one name in your Reports.

.. warning::

   If a link in your DWC content already contains hard-coded UTM parameters, Mautic may append a second set, resulting in a malformed URL. Keep links in DWC content clean without manual UTM parameters, and let block-level fields handle tagging.

.. tip::

   Use consistent naming across blocks. If one block uses ``source=dwc`` and another uses ``source=dynamic-web-content``, your analytics data splits across two rows, making comparison difficult.

When the setup is working correctly, links inside the DWC block include UTM parameters when rendered on the Landing Page. Clicking through and checking the destination URL in the browser address bar shows the correct parameters. Traffic from that block appears as a distinct source or medium combination in your analytics platform

.. seealso::

   * :doc:`utm_tags_overview`
   * :doc:`utm_tags_emails`
