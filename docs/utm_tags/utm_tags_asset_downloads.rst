.. vale off

UTM tags on Asset downloads
###########################

.. vale on

Mautic can capture UTM parameters when a Contact downloads a managed Asset, a file hosted inside Mautic. However, this behavior differs significantly from UTM capture on Forms, Emails, Dynamic Web Content - DWC - blocks, and Landing Pages. Understanding the distinction prevents tracking gaps and misplaced expectations.

.. vale off

How Asset download UTM works
****************************

.. vale on

Mautic only populates UTM values on Asset downloads when you share the Asset URL directly as a link with UTM parameters manually included, for example, inside an Email, a button, or any other Channel where you control the full URL:

.. code-block:: text

   https://your-mautic.com/Asset/your-file?utm_source=newsletter&utm_medium=Email&utm_campaign=spring_sale_2026

In this URL, ``utm_source=newsletter`` identifies the sending newsletter as the origin, ``utm_medium=email`` identifies the Channel, and ``utm_campaign=spring_sale_2026`` groups the download under a named Campaign. You construct this URL manually and place it directly in your content rather than relying on a Form submit action.

Mautic stores those values on the **download record itself**, not on the Contact's profile. This distinction matters because it restricts how you can use the data downstream:

* You can only view UTM values in **Asset Reports**.
* You won't see them on the Contact's activity timeline.
* You can't use them in Segment filters based on Contact UTM data.

.. vale off

Limitation: form-triggered downloads
************************************

.. vale on

Contacts commonly download Assets through a Form action - **Download Asset** - on submit. In this flow, Mautic never captures UTM parameters, not because of a configuration issue, but because of how Mautic generates the download URL internally:

.. code-block:: text

   https://your-mautic.com/Asset/some-uuid?ct=eyJsZWFkIjoxMjMsImNoYW5uZWwiOnsiZm9ybSI6NH19&stream=0

Mautic generates this URL internally at the moment of Form submission. The token-based ``ct`` parameter carries identity and Channel context, but Mautic never forwards the original Landing Page URL's UTM parameters, for example ``utm_source=newsletter``, to that download request. As a result, the UTM fields on every Form-triggered download record are always empty.

This internal URL format reflects how Mautic tracks Asset delivery through its own Contact tracking layer rather than through query string parameters. Because the download request originates from Mautic's backend rather than from the visitor's browser carrying the original Landing Page URL, there's no mechanism to pass the Landing Page-level UTM context forward to the Asset download record.

.. important::

   If you need UTM data to appear on the Contact's profile for segmentation or timeline visibility, use the **Record UTM Tags** Form action instead. That action reads UTM parameters from the Landing Page URL at submission time and writes them to the Contact's profile. See :doc:`utm_tags_forms` for setup instructions.

.. seealso::

   * :doc:`utm_tags_overview`
   * :doc:`utm_tags_forms`
