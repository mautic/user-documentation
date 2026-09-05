.. vale off

UTM tags as Campaign conditions
###############################

.. vale on

Inside a Mautic Campaign, you can branch the flow based on the UTM values recorded on a Contact's profile. You complete this through a **Contact field value** condition node, which has a dedicated UTM Tags section that exposes all five standard UTM fields. Depending on whether the Contact's UTM data matches your condition, the Campaign routes them down the 'yes' or 'no' path, letting you deliver different follow-up actions, Emails, or wait steps based on where the Contact originally came from.

For this to work, Contacts must already have UTM data on their profile, captured via a Form submission with the **Record UTM tags** action or via a Landing Page visit with UTM parameters in the URL. The Campaign must also have a trigger - Segment membership, Form submission, or similar - configured before adding condition nodes.

Configure conditions
********************

#. Open the Campaign and launch the Campaign Builder:

   #. Go to **Campaigns**.
   #. Click the name of the Campaign to modify.
   #. Click **Edit**.
   #. Click **Launch Campaign Builder**.

#. Add a condition node by clicking the **+** on your Campaign flow and selecting **Condition** > **Contact field value**.

#. In the condition editor, scroll down to the **UTM tags** section to view all five available UTM fields:

   * ``Source``
   * ``Medium``
   * ``Campaign``
   * ``Content``
   * ``Term``

#. Select the field you want to evaluate and enter the value to match. For example, set ``Medium`` to ``email``, or ``Campaign`` to ``spring_sale_2026``.

#. Connect the condition node's **Yes** and **No** paths to the appropriate next steps in the Campaign flow.

#. Save and activate the Campaign.

The preceding example uses ``Medium`` checked against ``email`` as the evaluated field, which correctly identifies Contacts who arrived through an Email Channel before entering this Campaign. Alternatively, checking ``Campaign`` against ``spring_sale_2026`` lets you deliver Campaign-specific messaging to Contacts acquired through that Campaign while routing Contacts from other Campaigns to a different path.

Branching on ``utm_medium`` rather than ``utm_campaign`` is useful when unifying follow-up logic across several Campaigns that all used the same Channel. Branching on ``utm_campaign`` works better when requiring Campaign-specific personalization in messaging. Both approaches are valid depending on how granular your segmentation needs to be.

.. warning::

   The UTM condition evaluates the values **currently recorded** on the Contact profile at the moment the Campaign processes them. If Mautic hasn't captured UTM data when the Contact enters the Campaign - for example, if they entered before submitting the Form that records UTM tags - the condition evaluates against empty values and routes the Contact to the 'No' path. Order matters.

.. seealso::

   * :doc:`utm_tags_overview`
   * :doc:`utm_tags_forms`
   * :doc:`utm_tags_segment_filters`
   * :doc:`/campaigns/campaign_builder`
