---
title: 'Updating Mautic Using CLI'
taxonomy:
    category:
        - docs
slug: updating-at-command-line
twitterenable: true
twittercardoptions: summary
articleenabled: false
orgaenabled: false
orga:
    ratingValue: 2.5
orgaratingenabled: false
personenabled: false
facebookenable: true
---

---
## Updating Mautic Using CLI
Mautic can only be updated using Composer via the command line from version 5.0. 

The update feature within the Mautic user interface (UI) has been deprecated from Mautic 4.x, but you will be alerted within the UI (see below figure) when a new version of the Mautic is available. 

![Depracted update feature for Mautic 5.0 and less versions ](https://www.mautic.org/sites/default/files/2022-02/update-deprecated.png)

Before starting to upgrade, it is highly recommended take a backup of your instance. If updates are available, you will receive an update notification followed by step-by-step instructions in the CLI to complete the process.

 To update a Mautic instance: 

1. Navigate to the Mautic root directory.

   ```
    cd /your/mautic/directory
   ```
1. Backup your Mautic instance.
   >NOTE: You are strongly advised to back up your Mautic instance before updating it.
1. Check for any available updates.

   ```
   php bin/console mautic:update:find
   ```
   When updates are available, an update notification informs the users of the recommended environment requirements (for example, a higher version of PHP must be installed or plugins that must be updated) and new features included in the release. 
1. After a system readiness check, you can apply the updates.

   ```
   php bin/console mautic:update:apply
   ```
Follow the step-by-step update command-line instructions (CLI) instructions to complete the update process.
   
If the process fails at a certain step, visit [this](https://docs.mautic.org/en/mautic-3-upgrade/upgrade-steps) page to research about the specific error code.

For more support, post your request to support to [https://forum.mautic.org](https://forum.mautic.org).
   
