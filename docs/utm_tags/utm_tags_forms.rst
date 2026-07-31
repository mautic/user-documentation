.. vale off

Recording UTM tags in Forms
############################

.. vale on

When a Contact submits a Mautic Form, you can automatically capture the UTM parameters from the Landing Page URL and store them on their profile. A built-in Mautic action called **Record UTM tags** handles this, but the action itself doesn't define which UTM values to capture. It reads whatever UTM parameters are already present in the URL of the Landing Page where the Form lives.

That means the website is responsible for including UTM parameters in the Landing Page URL. The Form action picks them up at submission time. The five standard parameters it captures are ``utm_source``, ``utm_medium``, ``utm_campaign``, ``utm_content``, and ``utm_term``. To follow the steps below, you need permission to edit Forms in Mautic and a Form already embedded on a website Landing Page where the site sends UTM-tagged traffic.

.. vale off

Add UTM recording
*****************

.. vale on

#. Open the Form and the edit details:

   #. Go to **Components** > **Forms**.
   #. Click the name of the Form you want to modify.
   #. Click **Edit**.

#. Go to the **Actions** tab inside the Form editor.

#. Click **Add action**.

#. Select **Record UTM Tags** from the dropdown menu.

#. Fill in the **Name** field with a label for your reference, for example, ``Record UTM tags on submit``. The description is optional.

   .. attention::

      The **Name** and **Description** fields in the action dialog represent organizational labels, **not** configuration settings. The action operates automatically once added, and requires no further parameter configuration.

#. Save the action and save the Form.

#. Confirm with the website team that Campaign URLs pointing to Landing Pages with this Form include UTM parameters in the query string, for example:

   .. code-block:: text

      https://yoursite.com/landing-Page?utm_source=newsletter&utm_medium=Email&utm_campaign=spring_sale_2026

#. Test the setup by visiting the Landing Page using a URL with UTM parameters, submitting the Form, and checking the Contact profile.

This URL uses ``utm_source=newsletter`` to identify the sending newsletter, ``utm_medium=email`` to identify the delivery Channel, and ``utm_campaign=spring_sale_2026`` to group the submission under the active Campaign. Mautic writes all three values to the Contact profile once the Contact submits the Form, making them available for Segment filters and Campaign conditions. Using real, meaningful values during testing rather than placeholder strings ensures the timeline entry looks exactly as it does in production.

The choice to use three parameters rather than all five reflects a practical minimum. You can use ``utm_campaign`` as the most important signal for Reporting, while ``utm_source`` and ``utm_medium`` together give you Channel attribution. The optional ``utm_content`` and ``utm_term`` parameters add finer-grained tracking when you need to distinguish between multiple creative variants or paid keyword groups.

.. note::

   Forms capture the full Landing Page URL, Landing Page referrer, User agent, and all raw query parameters, not just UTM fields.

.. tip::

   If a visitor arrives without UTM parameters in the URL but the Landing Page referrer URL contains them, meaning they clicked through from a Landing Page that had UTM parameters, Mautic falls back to reading parameters from the Landing Page referrer. Don't rely on this as a primary strategy, but it prevents UTM fields from remaining empty in this scenario.

After saving, the **Record UTM tags** action appears in the Form's action list. When a Contact submits the Form from a UTM-tagged URL, their profile displays a **UTM tags recorded** timeline entry, separate from the Form submission entry, displaying the associated Form ID and captured field values. If UTM fields remain empty after a test submission, the URL used during testing didn't contain UTM parameters. This indicates a website-side link configuration issue rather than a Mautic configuration issue.

.. TODO: add screenshot - Contact timeline showing a "UTM tags recorded" entry with populated UTM fields and a FORMID reference

.. seealso::

   * :doc:`utm_tags_overview`
   * :doc:`utm_tags_landing_pages`
   * :doc:`utm_tags_segment_filters`
   * :doc:`utm_tags_campaign_conditions`
