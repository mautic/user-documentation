.. vale off

Tracking script
###############

.. vale on

After installation and setup of the :doc:`/configuration/cron_jobs` you're ready to begin tracking Contacts. You need to add a piece of JavaScript to the websites for each site you wish to track through Mautic.

This is a straightforward process. You can add this tracking script to your website template file, or install a Mautic Integration for the more common content management system platforms.

To open 'Tracking Settings', click the settings wheel in the top right corner to open the Settings menu, then go to Configuration and select 'Tracking Settings'. See :doc:`/configuration/settings` for more about the Configuration area. Copy the exact code from 'Tracking Settings' in the Global Configuration and insert it just before the closing ``</body>`` tag. Mautic offers two setup options: a single all-in-one script, or two separate scripts for consent-managed setups. Mautic tracks Landing Pages automatically, so you only need these scripts on third-party websites.

.. vale off

Choosing a tracking setup
*************************

.. vale on

'Tracking Settings' presents both options as tabs. Pick the one that matches how your site handles consent:

* 'Full tracking'—use this when there's no separate consent gate, or when you handle consent elsewhere. It loads Contact tracking immediately.
* 'Consent-managed'—use this when a consent manager gates tracking and cookies. Dynamic Content and Forms work for everyone, while Contact tracking waits until the visitor consents.

.. vale off

Full tracking
*************

.. vale on

The 'Full tracking' tab gives you a single all-in-one script. It loads the essential runtime first, then the tracking add-on, so use it only after the visitor grants tracking consent or where consent isn't required. This behaves like all-in-one tracking has always worked.

Here's an example of the all-in-one tracking JavaScript. Copy the whole block from 'Tracking Settings' in your Mautic instance rather than retyping it—the copied snippet already contains your instance's Site URL. In the example below, the placeholder ``example.com/mautic`` stands in for that URL:

.. code-block:: javascript

  (function(w,d,t,u,n,a,m){w['MauticTrackingObject']=n;
     w[n]=w[n]||function(){(w[n].q=w[n].q||[]).push(arguments)},a=d.createElement(t),
     m=d.getElementsByTagName(t)[0];a.async=1;a.src=u;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://example.com/mautic/mtc.js','mt');
   mt('send', 'pageview');

Existing ``/mtc.js`` embeds keep working unchanged, so you don't need to update sites that already use them.

.. vale off

Consent-managed tracking
************************

.. vale on

The 'Consent-managed' tab gives you two snippets that you use together, and the loading order matters. The essential script loads first and runs safely before the visitor consents. The tracking add-on runs later, only after the visitor grants consent.

Essential script
================

The essential script loads Mautic's essential features without visitor tracking. It renders Dynamic Content and injects Forms, but it doesn't track Contacts, set cookies, store data in the browser, or send identifying requests. That makes it safe to place on the page before the visitor consents.

Copy the exact snippet from the 'Essential script (before consent)' area of the 'Consent-managed' tab. It powers :doc:`/components/dynamic_web_content` and :doc:`/components/forms` for every visitor.

Tracking add-on script
======================

The tracking add-on adds the identity and tracking layer: Contact tracking, page-view events, and analytics Integrations such as Google Analytics and Facebook Pixel. You run this snippet from your consent manager's callback, after the visitor consents. The add-on is self-deferring: it runs immediately if the essential runtime is already ready, and otherwise waits for the essential-ready signal on its own before running and queuing the initial page view. You don't have to time this manually. This handoff is typically configured inside your consent or cookie-management platform, or handled by a developer, so if you're a non-developer this is the step to hand off along with the exact snippet.

.. warning::

   Only place the tracking add-on when you also load the essential script. If you place the add-on without the essential script, it has nothing to wait for, never runs, and Mautic tracks nothing. Always load the essential script first.

Copy the exact snippet from the 'Tracking add-on (after consent)' area of the 'Consent-managed' tab.

Loading order
=============

Follow this order in a consent-managed setup:

#. Load the essential script. It's safe to place before the visitor consents.
#. After your consent manager records consent, load the tracking add-on.
#. The tracking add-on automatically waits for the essential script to finish loading, then queues the initial page view—you don't need to time this yourself.