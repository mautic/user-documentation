.. vale off

UTM tags as Segment filters
############################

.. vale on

Segments can include or exclude Contacts based on UTM values recorded on their profile. All five standard UTM fields are available as filter conditions: ``utm_source``, ``utm_medium``, ``utm_campaign``, ``utm_content``, and ``utm_term``. This lets you build Segments like "all Contacts who came from the spring sale Email Campaign" or "all Contacts whose source was Google," and use those Segments for targeted sends, Reporting, or Campaign entry Points.

The UTM data queried here comes from the **Record UTM Tags** Form action and from Landing Page visits and tracked website pages where UTM parameters exist in the URL. UTM data from Asset downloads stores separately and isn't available in Segment filters. To follow the steps below, Contacts must have UTM data on their profile and you need permission to create or edit Segments in Mautic.

Create segment filters
**********************

#. Go to **Segments** and open an existing Segment or create a new one.

#. Go to the **Filters** tab.

#. Click **Add filter** and search for the UTM field you want to filter on. All five are available under their corresponding labels:

   - ``utm_source``
   - ``utm_medium``
   - ``utm_campaign``
   - ``utm_content``
   - ``utm_term``

#. Select the operator and enter the value to match, ``newsletter``, ``email``, or ``spring_sale_2026``.

#. Save the Segment.

The preceding example applies the operator and value ``newsletter`` to ``utm_source``, which selects all Contacts who recorded ``newsletter`` as their source at any point in their history. You could equally filter on ``utm_medium = email`` to target all Email-acquired Contacts, or combine both filters with and logic to narrow the audience to Contacts acquired specifically via the newsletter Channel using Email delivery.

Combine filters this way to reflect how UTM parameters work together. Filtering on a single field, ``utm_campaign`` alone, for instance, can include Contacts from multiple Channels. Adding a second filter on ``utm_medium`` narrows the Segment to Contacts from a specific Channel within that Campaign, which is often the more actionable audience for a targeted send.

.. note::

   Segment UTM filters match against values **ever recorded** on the Contact, not just the most recent visit. If a Contact has tag with multiple Campaigns over time, they may match a filter for an older Campaign even if their latest activity was from a different one.

.. tip::

   Combining UTM filters with other Segment conditions, for example, "came from Campaign X and submitted Form Y," is a powerful way to build high-intent audiences. UTM filters alone tell you the source. Pairing them with behavioral filters tells you the source and what the Contact did.

After the Segment updates, it should show Contacts whose recorded UTM values match your filter conditions, with Contacts that have no UTM data or non-matching values correctly excluded.

.. seealso::

   - :doc:`utm_tags_overview`
   - :doc:`utm_tags_forms`
   - :doc:`utm_tags_campaign_conditions`
   - :doc:`/segments/manage_segments`
