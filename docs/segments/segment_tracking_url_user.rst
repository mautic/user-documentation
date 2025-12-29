.. _segment_tracking_url_user:

Segment Tracking URL Feature
===========================

Overview
--------
Mautic can automatically append a contact’s segment IDs to tracking URLs. This helps you integrate with third-party tools (like VWO) and analyze user journeys based on segment membership.

How It Works
------------
When enabled, Mautic adds a ``segment_ids`` query parameter to tracking and redirect URLs. This parameter contains a comma-separated list of the contact’s segment IDs.

Example:

    https://yourdomain.com/r/12345?segment_ids=12,34,56

If the URL already has query parameters or a fragment (``#``), Mautic will handle them correctly.

Enabling the Feature
--------------------
1. Go to **Settings** > **Configuration** in your Mautic instance.
2. Find the option: **Append segment IDs to tracking URLs**.
3. Set it to **Yes**.
4. Save your configuration.

Use Cases
---------
- Integrate with A/B testing tools (e.g., VWO) to segment users by Mautic segments.
- Track which segments are interacting with specific assets or campaigns.
- Pass segment data to external analytics or personalization platforms.

Notes
-----
- Only published segments are included.
- If a contact is not found, the URL will not include the ``segment_ids`` parameter.
- This feature works for all tracked redirects and asset downloads.

Troubleshooting
---------------
- If you do not see ``segment_ids`` in your URLs, ensure the feature is enabled and the contact belongs to at least one published segment.
- For technical details, see the developer documentation: :ref:`segment_tracking_url_update`
