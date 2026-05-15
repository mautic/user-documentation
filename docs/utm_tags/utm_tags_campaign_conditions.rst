.. vale off

UTM tags as Campaign conditions
################################

.. vale on

Inside a Mautic Campaign, you can branch the flow based on the UTM values recorded on a Contact's profile. This is complete through a **Contact field value** condition node, which has a dedicated UTM Tags section that exposes all five standard UTM fields. Depending on whether the Contact's UTM data matches your condition, the Campaign routes them down the "yes" or "no" path, letting you deliver different follow-up actions, Emails, or wait steps based on where the Contact originally came from.

For this to work, Contacts must already have UTM data on their profile, captured via a Form submission with the **Record UTM tags** action or via a Page visit with UTM parameters in the URL. The Campaign must also have a trigger (Segment membership, Form submission, or similar) configured before adding condition nodes.

Step-by-step guide
*******************

#. Open the Campaign you want to configure by going to **Campaigns** and clicking the Campaign name, then opening the Campaign builder.

#. Add a condition node by clicking the **+** on your Campaign flow and selecting **Condition** > **Contact field value**.

#. In the condition editor, scroll down to the **UTM tags** section. You sees all five UTM fields listed:

   - ``Source``
   - ``Medium``
   - ``Campaign``
   - ``Content``
   - ``Term``

#. Select the field you want to evaluate and enter the value to match — set ``Medium`` to ``email``, or ``Campaign`` to ``spring_sale_2026``.

#. Connect the condition node's **Yes** and **No** paths to the appropriate next steps in the Campaign flow.

#. Save the Campaign and activate it.

The preceding example uses ``Medium`` checked against ``email`` as the evaluated field, which correctly identifies Contacts who arrived through an Email Channel before entering this Campaign. Alternatively, checking ``Campaign`` against ``spring_sale_2026`` lets you deliver Campaign-specific messaging to Contacts acquired through that Campaign while routing Contacts from other Campaigns to a different path.

Branching on ``utm_medium`` rather than ``utm_campaign`` is useful when you want to unify follow-up logic across several Campaigns that all used the same Channel. Branching on ``utm_campaign`` is better when you need Campaign-specific personalization in your messaging. Both approaches are valid, the right choice depends on how granular your segmentation needs to be.

.. warning::

   The UTM condition evaluates the values **currently recorded** on the Contact's profile at the moment the Campaign processes them. If UTM data hasn't capture yet when the Contact enters the Campaign, for example, they entered before submitting the Form that records UTM tags, the condition evaluates against empty values and routes them to the "No" path. Order matters.

Contacts with matching UTM values should route to the "Yes" path once the Campaign processes them.

.. seealso::

   - :doc:`utm_tags_overview`
   - :doc:`utm_tags_forms`
   - :doc:`utm_tags_segment_filters`
   - :doc:`/Campaigns/campaign_builder`
