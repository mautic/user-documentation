# How to update Mautic

 There are two ways to update Mautic:

1. [Using the Command Line][command-line-update] - recommended
2. Through the [user interface][user-interface-update]

If your instance is in production, has a large number of contacts and/or is  on shared hosting, it's **strongly** recommended that you update at the command line.

> 🚧 *Warning*
>
> Updating in the user interface requires a significant amount of resources, and can be error-prone if the server restricts resource allocation. This can lead to failed updates and corrupted data.


## Stability levels

By default, Mautic receives notifications both in the user interface and at the command line for stable releases only.

If you wish to help with testing early access releases in a development environment, please edit your configuration and set the stability level to Alpha, Beta, or Release Candidate. This allows you to receive notifications for early access releases. **Always** read the release notes before updating to an early access release.

> 🚧 *Warning*
>
> Never enable early access releases for production instances

## What to do if you need help updating Mautic

If you need help, you can ask for it in several places. You should remember that most members of the Community Forums, Slack, and GitHub are volunteers.

[Mautic Community Forums][support-forums] is the place where you can ask questions about your configuration if you think it is the cause of the problem. Please search before posting your question, since someone may have already answered it.

The live [Community Chat][mautic-slack] is also available, but all support requests have to be posted on the forums. Post there first, then drop a link in Slack if you plan to discuss it there.

In all cases, it is important to provide details about the issue, as well as the steps you have taken to resolve it. At a minimum, include the following:

* Steps to reproduce your problem - a step-by-step walk-through of what you have done so far
* Your server's PHP version.
* The version of Mautic you are on, and the version you are aiming to update to
* The error messages you are seeing - if you don't see the error message directly, search for it in the var/logs folder within your Mautic directory and in the server logs. Server logs are in different places depending on your setup. Ubuntu servers generally have logs in /var/log/apache2/error.log. Sometimes your hosting provider might offer a graphical interface to view logs in your Control Panel.

If you don't provide the information requested as a minimum, the person who might try to help you has to ask you for it, so please save them the trouble and provide the information upfront. Also, importantly, please be polite. Mautic is an Open Source project, and people are giving their free time to help you.

If you are sure that you have discovered a bug and you want to report it to developers, you can do so on GitHub. GitHub is not the right place to request support or ask for help with configuration errors. Always post on the forums first if you aren't sure, if a bug report is appropriate this can link to the forum thread.


[command-line-update]: </home/updating-in-command-line>
[user-interface-update]: </home/updating-in-the-browser>
[support-forums]: <https://forum.mautic.org/support>
[mautic-slack]: <https://mautic.org/slack>
[mautic-github]: <https://github.com/mautic/mautic/issues/new>
