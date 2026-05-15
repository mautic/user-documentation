.. vale off

UTM tags in Dynamic Web Content blocks
########################################

.. vale on

When you add UTM fields to a Dynamic Web Content (Dynamic Web Content (DWC)) block in Mautic, you aren't filtering which Contacts see the block, you are tagging the outbound links inside it. Every trackable link in the Dynamic Web Content (DWC) content automatically has your UTM parameters appended to it when the block renders on the Page.

This means you can track in Google Analytics, or any other analytics tool, exactly how many people clicked links coming from that specific Dynamic Web Content (DWC) block, without manually editing each URL in your content. To use this, you need permission to edit Dynamic Web Content in Mautic, a Dynamic Web Content (DWC) block with at least one outbound link, and an analytics tool set up on the destination website to receive UTM-tagged traffic.

Step-by-step guide
*******************

#. Open the Dynamic Web Content block you want to configure by going to **Components** > **Dynamic Web Content** and clicking the block name.

#. Locate the UTM fields in the block settings. These are separate from the content body and the Segment or filter conditions.

#. Fill in the UTM fields you want to apply to links inside this block:

   - ``Campaign``, the Campaign name — ``spring_sale_2026``
   - ``Medium``, the Channel type — ``website``
   - ``Source``, where the block is placed — ``dwc``
   - ``Content`` is optional, use it if you need finer-grained tracking

#. Save the Dynamic Web Content (DWC) block.

#. Embed the block on the website.

#. Test by visiting the Page as an anonymous visitor, hovering over or clicking a link inside the Dynamic Web Content (DWC) block, and confirming the destination URL now includes your UTM parameters, for example:

   .. code-block:: text

      https://yoursite.com/landing?utm_campaign=spring_sale_2026&utm_medium=website&utm_source=dwc

This URL was produced by a Dynamic Web Content (DWC) block configured with ``utm_campaign=spring_sale_2026``, ``utm_medium=website``, and ``utm_source=dwc``. The ``utm_source`` value ``dwc`` is a short, descriptive token that makes it immediately clear in analytics Reports that the traffic originated from a Dynamic Web Content block rather than an Email, paid ad, or other Channel.

The ``utm_medium=website`` value reflects that the block renders on a website Page rather than inside an Email. Keeping the medium accurate allows your analytics tool to correctly classify this traffic in its Channel groupings. The ``utm_campaign`` value ties this block's traffic to the same named Campaign you use in your Emails and ads, so all Campaign-level traffic aggregates cleanly under one name in your Reports.

.. warning::

   If a link in your Dynamic Web Content (DWC) content already has UTM parameters hard-coded in it, Mautic may append a second set, resulting in a malformed URL. Keep links in Dynamic Web Content (DWC) content clean, no manual UTM parameters, and let the block-level fields do the tagging.

.. tip::

   Use consistent naming across blocks. If one block uses ``source=dwc`` and another uses ``source=dynamic-web-content``, your analytics data is/are split across two rows and harder to compare.

When the setup is working correctly, links inside the Dynamic Web Content (DWC) block include UTM parameters when rendered on the Page, clicking through and checking the destination URL in the browser address bar shows the correct parameters, and traffic from that block appears as a distinct source/medium combination in Google Analytics.

.. seealso::

   - :doc:`utm_tags_overview`
   - :doc:`utm_tags_emails`
