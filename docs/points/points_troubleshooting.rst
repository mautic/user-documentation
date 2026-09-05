Points troubleshooting
######################

Page visits not recognized
**************************

To workaround this issue, try one of the following options:

1. Make sure that you aren't testing while logged into Mautic. Mautic ignores activity from Mautic Administrators. So, it's suggested that you use an anonymous session, an incognito window, another browser, or log out of Mautic.

2. The tracking of Point Actions is currently done once per Contact. This means that subsequent visits won't re-trigger the action if already triggered once.

3. Ensure that the URL you define in the Point Action appears somewhere in the visited URL. Mautic matches the URL you enter anywhere within the visited URL, and the match isn't case-sensitive. If that text appears in the visited URL, it satisfies the Point Action's URL condition. The once-per-Contact behavior noted earlier still applies, so subsequent visits won't re-trigger it. A URL can include the scheme, host or domain, path, query parameters, or fragment.

For example, if you have a URL of ``https://example.com`` and the page hit registers as ``https://example.com/index.php?foo=bar``, the Point Action now triggers, because the defined text appears in the visited URL. Legacy wildcard patterns such as ``https://example.com*`` are also supported, and a trailing ``*`` still matches any visited URL that begins with the literal text before it.