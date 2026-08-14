.. vale off

Capturing UTM tags from Landing Pages
######################################

.. vale on

When a known Contact visits a Landing Page, either a Mautic-built Landing Page or an external website with the Mautic tracking script installed, Mautic registers a visit on their profile as behavioral activity. If the URL they landed on contains UTM parameters, Mautic automatically extracts and stores them on the Contact record. This enables segmentation and Reporting based on which Campaigns, Channels, or sources drove that visit.

There is nothing to configure on the Landing Page or website itself. The UTM parameters must already be present in the URL the Contact clicks, meaning whoever creates the link that brings the Contact there is responsible for including the UTM parameters in it. Mautic reads what's there.

.. note::

   .. note::

   Landing Pages have no settings, fields, or toggles for UTM parameters. If asked where to configure UTM tags for a Landing Page, the answer is always in the link that brings visitors to the Landing Page.

Examples
********

The following URLs show how UTM parameters appear on both external websites and Mautic Landing Pages:

.. code-block:: text

   https://example.com/promo-Page?utm_source=newsletter&utm_medium=email&utm_campaign=spring_sale_2026

.. code-block:: text

   https://example.com/Page/landing-slug?utm_source=google&utm_medium=cpc&utm_campaign=spring_sale_2026

The first URL contains three UTM parameters:

* ``utm_source``: identifies the traffic source as a newsletter
* ``utm_medium``: identifies the delivery Channel as Email
* ``utm_campaign``: groups the traffic under the ``spring_sale_2026`` Campaign name.

The second URL shows the same pattern applied to a Mautic-hosted Landing Page: the slug ``/Page/landing-slug`` is the Mautic Landing Page path, and the query string carries the same UTM data.

Choose parameters to reflect the realistic distribution Channel for each URL. The external website URL uses ``utm_medium=email`` because a newsletter link drove the visit, while the Mautic Landing Page URL uses ``utm_medium=cpc`` because a paid search ad drove it. Using accurate medium values ensures your analytics tool groups traffic into the correct Channels and your Reporting reflects the actual performance of each Channel.

.. seealso::

   * :doc:`utm_tags_overview`
   * :doc:`utm_tags_forms`
