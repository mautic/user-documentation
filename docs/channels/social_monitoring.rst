Social Monitoring
#################

It's possible to add contacts to Mautic through monitoring Twitter for mentions and hashtags.

Requirements
************

- The :doc:`/plugins/twitter` plugin must be configured
- The Social Monitoring :doc:`cron job </set_up/cron_jobs>` must be triggered periodically.

Creating a Social Monitor
*************************

To create a new Social Monitor, go to Channels > Social Monitoring and click on New.

You will be presented with two options when creating a Social Monitor:

- **Twitter mention** - Any time someone mentions a specified username, they will be created in Mautic as a Contact
- **Twitter hashtag** - Any time someone uses a specified hashtag in a tweet, they will be created in Mautic as a Contact.

  .. image:: images/social_monitoring/social_monitor.jpeg
    :width: 400
    :alt: Screenshot showing the creation of a new Social Monitor.

Social mentions
===============

When selecting the Twitter Mention monitoring method, the following fields are available:

- **Twitter mention** - The Twitter handle you want to track being mentioned. Do not include the @ symbol - for example ``mauticcommunity``.
- **Description** - A description to use internally within Mautic to tell the marketer what the monitor is tracking.
- **Metch contact names** - If this option is set to Yes, Mautic will try to match the names of Contacts created from Twitter and associate the Twitter account with their existing Contact record.  If set to No, this will not happen and you are likely to experience duplicated contacts.

There are also the standard Mautic fields available:

**Published** - This allows you to set the published status of the Social Monitor. Unpublished Social Monitors will not collect new Contacts.

**Publish at (date/time)** - This allows you to define the date and time at which this Social Monitor will be monitoring for new Contacts. This might be used to coincide with an event, for example.

**Unpublish at (date/time)** - This allows you to define the date and time at which this Social Monitor will cease to monitor for new Contacts.

**Contact Segment** - This allows you to define the Segment/s that Contacts should be added to if they are detected with this Social Monitor. This can be useful for identifying people who are talking about your brand, and directly add them to a Segment to take further action.

  .. image:: images/social_monitoring/social_monitoring_mentions.png
    :width: 400
    :alt: Screenshot showing the creation of a new Twitter Mentions Social Monitor.

Hashtags
========

When selecting the Twitter Hashtags monitoring method, the follwoing fields are available:

- **Twitter hashtag** - The Twitter hashtag you want to track being mentioned. Do not include the # symbol - for example ``mautic``.
- **Description** - A description to use internally within Mautic to tell the marketer what the monitor is tracking.
- **Metch contact names** - If this option is set to Yes, Mautic will try to match the names of Contacts created from Twitter and associate the Twitter account with their existing Contact record.  If set to No, this will not happen and you are likely to experience duplicated contacts.

There are also the standard Mautic fields available:

**Published** - This allows you to set the published status of the Social Monitor. Unpublished Social Monitors will not collect new Contacts.

**Publish at (date/time)** - This allows you to define the date and time at which this Social Monitor will be monitoring for new Contacts. This might be used to coincide with an event, for example.

**Unpublish at (date/time)** - This allows you to define the date and time at which this Social Monitor will cease to monitor for new Contacts.

**Contact Segment** - This allows you to define the Segment/s that Contacts should be added to if they are detected with this Social Monitor. This can be useful for identifying people who are talking about your brand, and directly add them to a Segment to take further action.

  .. image:: images/social_monitoring/social_monitoring_hashtags.png
    :width: 400
    :alt: Screenshot showing the creation of a new Twitter Hashtags Social Monitor.