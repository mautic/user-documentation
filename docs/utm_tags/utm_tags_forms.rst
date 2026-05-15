.. vale off

Recording UTM tags in Forms
############################

.. vale on

When a Contact submits a Mautic Form, you can automatically capture the UTM parameters from the Page URL and store them on their profile. This handles this by a built-in Mautic action called **Record UTM tags**, but the action itself doesn't define which UTM values to capture. It reads whatever UTM parameters are already present in the URL of the Page where the Form lives.

That means the website is responsible for ensuring UTM parameters include in the Landing Page URL, picks them up at submission time. The five standard parameters it captures are ``utm_source``, ``utm_medium``, ``utm_campaign``, ``utm_content``, and ``utm_term``. To follow the steps below, you need permission to edit Forms in Mautic and a Form already embedded on a website Page where the site sends UTM-tagged traffic.

Add UTM recording
*****************

#. Open the Mautic Form you want to configure by going to **Components** > **Forms** and clicking the Form name.

#. Go to the **Actions** tab inside the Form editor.

#. Click **Add action**.

#. Select **Record UTM tags** from the action type dropdown.

#. Fill in the **Name** field with a label for your own reference, ``Record UTM tags on submit``. The description is optional.

   .. warning::

      The **Name** and **Description** fields in the action modal confuse almost everyone the first time. They look like configuration, they aren't. The action is entirely automatic once added. there is nothing to configure beyond adding it.

#. Save the action and then save the Form.

#. Confirm with the website team that Campaign URLs Pointing to Pages with this Form include UTM parameters in the query string, for example:

   .. code-block:: text

      https://yoursite.com/landing-Page?utm_source=newsletter&utm_medium=Email&utm_campaign=spring_sale_2026

#. Test the setup by visiting the Landing Page using a URL with UTM parameters, submitting the Form, then checking the Contact's profile.

This URL uses ``utm_source=newsletter`` to identify the sending newsletter, ``utm_medium=email`` to identify the delivery Channel, and ``utm_campaign=spring_sale_2026`` to group the submission under the active Campaign. All three values write to the Contact profile once the Form submit, making them available for Segment filters and Campaign conditions. Using real, meaningful values during testing rather than placeholder strings ensures the timeline entry looks exactly as it ins production.

The choice to use three parameters rather than all five reflects a practical minimum. You can use ``utm_campaign`` as the most important signal for Reporting, while ``utm_source`` and ``utm_medium`` together give you Channel attribution. The optional ``utm_content`` and ``utm_term`` parameters add finer-grained tracking when you need to distinguish between multiple creative variants or paid keyword groups.

.. note::

   Forms capture the full Page URL, Page referrer, User agent, and all raw query parameters, not just UTM fields.

.. tip::

   If a visitor arrives without UTM parameters in the URL but the Page referrer URL does contain them, they clicked through from a Page that had UTM parameters, falls back to reading those from the Page referrer. Don't rely on this as a primary strategy, but it prevents the data from always being empty in this scenario.

After saving, the **Record UTM tags** action should appear in the Form's action list. When a Contact submits the Form from a UTM-tagged URL, their profile shows a **UTM tags recorded** timeline entry, separate from the Form submission entry, with the associated Form ID and the captured field values. If UTM fields are empty after a test submission, the URL used during the test didn't contain UTM parameters. that's a website-side issue, not a Mautic configuration issue.

.. TODO: add screenshot - Contact timeline showing a "UTM tags recorded" entry with populated UTM fields and a FORMID reference

.. seealso::

   - :doc:`utm_tags_overview`
   - :doc:`utm_tags_landing_pages`
   - :doc:`utm_tags_segment_filters`
   - :doc:`utm_tags_campaign_conditions`
