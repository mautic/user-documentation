Landing Pages
#############

.. vale off

Customizing the Preference Center
*********************************

.. vale on


.. vale off

Landing Page drafts
*******************

Creating a draft Landing Page
=============================

.. vale on

Mautic allows the creation of Landing Page Drafts using the 'Save as Draft' button in the Landing Page editor.

This feature needs turning on by adding the configuration parameter ``page_draft_enabled`` to your ``local.php`` configuration file as detailed below.

.. code:: php

  'page_draft_enabled' => 1

Once turned on, the 'Save as Draft' button appears on the Landing Page edit interface.

.. image:: images/landing_pages/save-draft.png
  :width: 400
  :alt: Screenshot showing the 'Save as Draft' button on the Landing Page edit interface.

Only one Draft at a time can exist for any given Landing Page. When working with a Draft, the 'Save as Draft' button instead displays two buttons, 'Apply Draft' and 'Discard Draft'.

.. image:: images/landing_pages/apply-draft.png
  :width: 400
  :alt: Screenshot showing the 'Apply Draft' and 'Discard Draft' buttons on the Landing Page edit interface.

You can only change the content of the Landing Page itself when it's in Draft. Changes to the Subject, Internal Name, selected Segment, etc. apply to the original Landing Page even when editing a Draft version of it. The Draft content exists separately from the original Landing Page.

.. vale off

Previewing a Draft Landing Page
===============================

.. vale on

You can preview a Landing Page Draft may by appending ``/draft`` to the end of the Landing Page preview URL. If an Landing Page has a Draft version, a Draft Preview URL is present on the Landing Page details overview, below the regular Preview URL.

.. image:: images/landing_pages/preview-draft.png
  :width: 400
  :alt: Screenshot showing the Preview Draft URL link on the Landing Page edit interface.


.. vale off

Selecting an A/B test winner
****************************

.. vale on

When a Landing Page has A/B test variants, its details view lists the main Landing Page and each variant in the **Variants** tab. Mautic compares the variants using the winner criteria you set, such as **Lowest bounce rate** or **Longest dwell time**.

You can end the test on any variant you choose instead of following Mautic's statistics. Once the A/B test starts, each Active variant's row shows a **Make winner** trophy action. The variant the statistics currently favor shows a filled trophy, and the other Active variants show an outline trophy. Inactive variants don't show the action.

.. note::

   Review the test results in **A/B Test Stats** before you make a variant the winner. Once you confirm, **A/B Test Stats** shows 'No results available at this time.' Mautic keeps the hit data, but it no longer shows the results of the ended test.

#. Open the Landing Page and go to the **Variants** tab.

   |

   .. image:: images/landing_pages/variants-tab.png
      :width: 800
      :alt: The highlighted Variants tab of a Landing Page with an A/B test in progress, listing the main Landing Page and two variants.

   |

#. Select the **Make winner** trophy on the variant you want to keep.

   |

   .. image:: images/landing_pages/make-winner-trophy.png
      :width: 800
      :alt: Variant rows in the Variants tab, each with a trophy button, with the Make winner trophy on the second variant highlighted.

   |

#. Select **Make winner** in the confirmation dialog.

   |

   .. image:: images/landing_pages/make-winner-confirm.png
      :width: 600
      :alt: The Make winner confirmation dialog, which warns that the chosen variant becomes the main item and the A/B test stops, with the Make winner button highlighted.

   |

Mautic sets the chosen variant as the main Landing Page, turns off the other variants, and stops the A/B test.

.. warning::

   When the winner isn't the main Landing Page, Mautic turns off the original main Landing Page, and its URL no longer redirects visitors to the winner. Visitors who open the original URL get an error instead. Before you confirm, update any links that use the original URL so they point to the winning variant's URL. You can also set **Redirect type** and **URL Redirect** on the original Landing Page to send visitors to the winning variant.
