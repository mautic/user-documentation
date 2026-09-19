.. vale off

Tracking script
###############

.. vale on

After installation and setup of the :doc:`/configuration/cron_jobs` you're ready to begin tracking Contacts. You need to add a piece of JavaScript to the websites for each site you wish to track through Mautic.

This is a straightforward process. You can add this tracking script to your website template file, or install a Mautic Integration for the more common content management system platforms.

To open **Tracking Settings**:

#. Click the settings wheel in the top right corner to open the **Settings** menu
#. Go to **Configuration**
#. Select **Tracking Settings**.

See :doc:`/configuration/settings` for more information about the Configuration area. Copy the exact code from **Tracking Settings** in the Global Configuration. Place the **Full tracking** script or the essential script just before the closing ``</body>`` tag. The tracking add-on is the exception: run it from your consent manager's callback after the visitor consents, as described in the :ref:`Consent-managed tracking` section below.

Mautic offers two setup options:

* A single all-in-one script
* Two separate scripts for consent-managed setups.

Mautic tracks Landing Pages automatically, so you only need these scripts on third-party websites.

.. vale off

Choosing a tracking setup
*************************

.. vale on

**Tracking Settings** presents both options as tabs. Pick the one that matches how your site handles consent:

* **Full tracking**: use this when there's no separate consent gate, or when you handle consent elsewhere. It loads Contact tracking immediately.
* **Consent-managed**: use this when a consent manager gates tracking and cookies. For every visitor, the essential script keeps the Dynamic Content fallback content, the default content you configure, visible and initializes Forms inside those fallback slots. Personalized Dynamic Content and Contact tracking wait until the visitor consents.

.. vale off

Full tracking
*************

.. vale on

The **Full tracking** tab gives you a single all-in-one script. It loads the essential runtime, then the tracking add-on, so it starts tracking Contacts immediately. Use it when your site has no separate consent gate, or when you handle consent elsewhere. This behaves like all-in-one tracking has always worked.

Copy the exact code from the **Full tracking** tab in **Tracking Settings**. The copied snippet already contains your instance's Site URL.

Existing ``/mtc.js`` embeds keep working unchanged, so you don't need to update sites that already use them.

.. vale off

Consent-managed tracking
************************

.. vale on

The **Consent-managed** tab gives you two snippets that you use together, and the loading order matters. The essential script loads first and runs safely before the visitor consents. The tracking add-on runs later, only after the visitor grants consent.

.. note::

   .. vale off

   By default, separately embedded Focus Items track views and interactions independently of Mautic website tracking, so you manage their consent separately. Loading only the essential script doesn't turn off Focus Item tracking. If you turn on the 'Use Mautic consent for Focus tracking' setting, Mautic instead bridges website-tracking consent to Focus tracking. See :doc:`/channels/focus_items` for how to embed a Focus Item and manage its consent.

   .. vale on

Essential script
================

.. vale off

The essential script loads Mautic's essential features without visitor tracking. It keeps Dynamic Content fallback content visible until both scripts load, and it initializes Forms inside those fallback slots. Forms embedded directly on the page work independently of the tracking scripts, so they aren't affected by the visitor's consent state. It doesn't track Contacts, set cookies, store data in the browser, or send identifying requests. That makes it safe to place on the page before the visitor consents.

Copy the exact snippet from the **Essential script (before consent)** area of the **Consent-managed** tab. Before consent, it shows :doc:`/components/dynamic_web_content` fallback content and initializes :doc:`/components/forms` in those fallback slots for every visitor; personalized Dynamic Content begins only after both scripts load.

.. vale on

Tracking add-on script
======================

.. vale off

The tracking add-on adds the identity and tracking layer:

* Contact tracking
* Page-view events
* Analytics Integrations such as Google Analytics and Facebook Pixel.

You run this snippet from your consent manager's callback, after the visitor consents. The add-on is self-deferring. It runs immediately if the essential runtime is already ready, and otherwise waits for the essential-ready signal on its own before running and queuing the initial page view. You don't have to time this manually. This handoff is typically configured inside your consent or cookie-management platform, or handled by a developer, so if you're a non-developer, this is the step to hand off along with the exact snippet.

.. vale on

.. warning::

   Only place the tracking add-on when you also load the essential script. If you place the add-on without the essential script, it has nothing to wait for, never runs, and Mautic tracks nothing. Always load the essential script first.

.. vale off

Copy the exact snippet from the **Tracking add-on (after consent)** area of the **Consent-managed** tab.

.. vale on

Loading order
=============

Follow this order in a consent-managed setup:

.. vale off

#. Load the essential script. It's safe to place before the visitor consents.
#. After your consent manager records consent, load the tracking add-on.
#. The tracking add-on automatically waits for the essential script to finish loading, then queues the initial page view—you don't need to time this yourself.

.. vale on