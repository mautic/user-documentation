Troubleshooting Campaigns
=========================

Page visits aren't recognized
------------------------------
To workaround this issue, try one of the following options:

1. Make sure that you aren't testing the Page visit while logged into Mautic. Mautic ignores activity from Mautic Administrators. So, it's suggested that you use an anonymous session, an incognito window, another browser, or log out of Mautic.

2. Ensure that the Contact getting tracked is in the Campaign. The easy way to test this is to review the timeline of the Contact for the page hit / inclusion into the Campaign.

3. Mautic executes Campaigns sequentially and won't repeat per Contact. If the Contact has already visited the Page while part of the Campaign and triggered the Visits a Page decision, then the Contact's subsequent visits won't re-trigger the actions associated with the decision.

4. Ensure that the URL in the Campaign action either matches exactly the URL visited, or use a wildcard. A URL can include the schema, host/domain, path, query parameters, and/or fragment. For example, if you have a URL of https://example.com and the page hit registers as https://example.com/index.php?foo=bar, the Campaign decision won't trigger. However, if you use https://example.com* as the URL, it matches the rule and thus gets triggered.

Another example is if you want to associate different page hits with specific Campaigns. For example, if you have Campaign A and Campaign B and you want to use the same base URL and path for both Campaigns but differentiate with a query parameter. For Campaign A, you can define a Visits a Page decision with https://example.com/my-page?utm_campaign=A* and for Campaign B, https://example.com/my-page?utm_campaign=B*. A Contact only triggers the specific Campaign desired. If the goal is to trigger both Campaigns regardless of the query parameters, use https://example.com/my-page*.