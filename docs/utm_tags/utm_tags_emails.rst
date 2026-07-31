.. vale off

UTM tags in Email
#################

.. vale on

Mautic automatically appends your UTM parameters to every trackable link inside the Email body when you send or preview the Email. This means a clean link like ``https://yoursite.com/promo`` in your Email becomes ``https://yoursite.com/promo?utm_source=newsletter&utm_medium=email&utm_campaign=spring_sale_2026`` in the recipient's inbox. Google Analytics, or any analytics tool, then attributes those visits to that specific Email send, letting you measure click-through traffic per Campaign without touching individual links in the content.

To use this, you need permission to edit Emails in Mautic, at least one outbound link in the Email body, and an analytics tool set up on the destination website to receive UTM-tagged traffic.

.. tip::

   Use the same ``Campaign`` value across your Email, Dynamic Web Content - DWC - blocks, and any paid ads running at the same time. All traffic from a single Campaign then rolls up cleanly under one Campaign name in Analytics, regardless of which Channel drove the click.

.. vale off

Configure Email UTM tags
************************

.. vale on

#. Open the Email and the edit details:

   #. Go to **Channels** > **Emails**.
   #. Click the name of the Email you want to modify.
   #. Click **Edit**.

#. Locate the **UTM tags** dropdown menu in the right-hand panel at the bottom. Expanding this section exposes the UTM parameter fields, which sit separately from the Email body content.

#. Fill in the UTM fields you want to apply to links inside this block:

   * **Campaign source**: where the Email originates, for example, ``newsletter`` or ``mautic``
   * **Campaign medium**: the Channel type, for example, ``email``
   * **Campaign name**: the Campaign name, for example, ``spring_sale_2026``
   * **Campaign content**: optional field for distinguishing between multiple Emails in the same Campaign, for example, ``welcome_email_1``

#. Save the Email.

#. Test by using the Email preview or sending a test to yourself, then hovering over a link in the Email and confirming the destination URL includes your UTM parameters, for example:

   .. code-block:: text

      https://yoursite.com/promo?utm_source=newsletter&utm_medium=Email&utm_campaign=spring_sale_2026

This URL results from an Email configured with ``utm_source=newsletter``, ``utm_medium=email``, and ``utm_campaign=spring_sale_2026``. The ``utm_source`` value ``newsletter`` clearly identifies the sending list or newsletter program as the origin. The ``utm_medium`` value ``email`` tells analytics tools to classify this traffic in the Email Channel grouping. The ``utm_campaign`` value ties the click to the named marketing initiative.

Setting ``utm_medium=email`` is important for Channel attribution accuracy. If you omit this field or set an incorrect value, your analytics tool may misclassify the traffic, for instance, attributing it to direct or referral traffic rather than Email. The ``utm_content`` field becomes valuable when you send multiple Emails within the same Campaign. It lets you compare performance between, say, ``welcome_email_1`` and ``welcome_email_2`` while keeping both associated with the same Campaign name.

When the setup is correct, links in the Email preview and test send include the configured UTM parameters. Clicking through from a test Email shows the UTM values in the browser address bar on the destination Landing Page. After a real send, traffic appears as a distinct source or medium combination in Google Analytics.

.. warning::

   If links in your Email body already have UTM parameters hard-coded, Mautic may stack a second set on top, leading to duplicate or malformed parameters. Keep links in the Email body clean, no manual UTM parameters, and let the Email-level fields do the tagging.

.. seealso::

   * :doc:`utm_tags_overview`
   * :doc:`utm_tags_dynamic_web_content`
