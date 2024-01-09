.. vale off

Message queue
#############

.. vale on

You can trigger a Campaign **marketing** Email, or send it as part of an Email broadcast - a Segment Email. When exceeding a frequency rule - whether defined at the Contact level or as a default set in Configuration, all Emails go to the Queue for processing later.

Priority and number of attempts
*******************************

.. image:: images/marketing-email.png
  :width: 600
  :align: center
  :alt: Screenshot showing marketing-Email

* You can select priority as **High** or **Normal**. When processing messages for a given date, Mautic places high priority messages at the top of the queue. Broadcasts are always treated as a normal priority.

* On reaching the number of attempts specified, Mautic makes an attempt to send the Email again in the event of rescheduling. Even if the message is pending, exceeding the number of attempts means that Mautic won't send the message.

Processing a message queue
**************************

This command processes all pending messages that haven't reached their maximum number of attempts and are in the pending queue.

Setup your :ref:`cron<processing a message queue>` as followed: ``php bin/console mautic:messages:send``



