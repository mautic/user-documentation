Points troubleshooting
######################

Recognition of page visits
**************************

To workaround this issue, try one of the following options:

1. Make sure that you aren't testing the page visit while logged into Mautic. Mautic ignores activity from Mautic Administrators. So, it's suggested that you use an anonymous session, an incognito window, another browser, or log out of Mautic.

2. The tracking of point actions is currently done once per Contact. This means that subsequent visits won't re-trigger the action if already triggered once.

3. Ensure that the URL defined either matches exactly the URL visited or use a wildcard. A URL can include the schema, host/domain, path, query parameters, and/or fragment.

For example, if you have a URL of ``https://example.com`` and the page hit registers as ``https://example.com/index.php?foo=bar``, the point action won't be recognized.. However, if you use ``https://example.com*`` as the URL, it matches the rule and thus gets triggered.