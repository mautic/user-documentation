.. vale off

Troubleshooting Campaigns
#########################

.. vale on

Page visits aren't recognized
*****************************

To workaround this issue, try one of the following options:

#. Make sure that you aren't testing the Page visit while logged into Mautic. Mautic ignores activity from Mautic Administrators. So, it's suggested that you use an anonymous session, an incognito window, another browser, or log out of Mautic.

#. Ensure that the Contact getting tracked is in the Campaign. The easy way to test this is to review the timeline of the Contact for the page hit / inclusion into the Campaign.

#. Mautic executes Campaigns sequentially and won't repeat per Contact. If the Contact has already visited the Page while part of the Campaign and triggered the Visits a Page decision, then the Contact's subsequent visits won't re-trigger the actions associated with the decision.

#. Ensure that the URL in the Campaign decision appears somewhere in the visited URL. Mautic matches the URL you enter anywhere within the visited URL, and the match isn't case-sensitive. If that text appears in the visited URL, it satisfies the decision's URL condition. The once-per-Contact behavior noted earlier still applies, so subsequent visits won't re-trigger it. A URL can include the scheme, host or domain, path, query parameters, or fragment.

For example, if you have a URL of ``https://example.com`` and the page hit registers as ``https://example.com/index.php?foo=bar``, the Campaign decision now triggers, because the defined text appears in the visited URL. Legacy wildcard patterns such as ``https://example.com*`` are also supported, and a trailing ``*`` still matches any visited URL that begins with the literal text before it.

Another example is if you want to associate different visited URLs with specific Campaigns. For example, if you have Campaign A and Campaign B and you want to use the same base URL and path for both Campaigns but differentiate with a query parameter. Here the trailing ``*`` matches any visited URL that begins with the literal text before it, so each decision matches only its intended query parameter. For Campaign A, you can define a ``Visits a Page`` decision with ``https://example.com/my-page?utm_campaign=A*`` and for Campaign B, ``https://example.com/my-page?utm_campaign=B*``. A Contact only triggers the specific Campaign desired. If the goal is to trigger both Campaigns regardless of the query parameters, use ``https://example.com/my-page*``.