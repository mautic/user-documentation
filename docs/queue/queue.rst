.. vale off

Queue
#####

.. vale on

With a queue, Mautic stores work such as sending an Email or recording a website visit, and processes it later instead of during the request that triggers it. Use queues if you send large volumes of Emails, or if many Contacts visit your website or open Emails at the same time.

Mautic uses Symfony Messenger and has two queues:

.. vale off

* **Queue for email (SMS and push messages)** - the ``email`` queue, for sending messages.
* **Queue for hits (page and email)** - the ``hit`` queue, for recording Landing Page hits, website hits, and Email opens.

.. vale on

By default, both queues use the ``sync://`` DSN, so Mautic processes this work immediately without a queue.

When a queued message fails, Mautic retries it. If it fails all its retries, Mautic discards it unless you configure the optional **Queue for failures**. See :ref:`Queue for failures`.

Configure the queues
********************

Configure a queue when you want Mautic to process its messages in the background.

#. Open the Admin menu by selecting the cog icon in the top right corner.
#. Select **Configuration**.

   .. image:: images/queue-admin-menu-configuration.png
     :width: 600
     :alt: Screenshot showing the Admin menu open with the cog icon and Configuration highlighted

#. Select the **Queue Settings** tab.
#. For each queue you want to use, enter the **Scheme** of your queue transport and its connection details.

   .. image:: images/queue-settings.png
     :width: 600
     :alt: Screenshot showing the Queue Settings tab with both queue sections and their Scheme fields highlighted

#. Select **Save**.

   .. image:: images/queue-settings-save.png
     :width: 600
     :alt: Screenshot showing the Save button highlighted at the top of the Configuration screen

For the available transports and the connection details each one needs, see :ref:`queue transports<How to enable the queuing>`.

Process the queues
******************

After you configure a queue, Mautic adds messages to it and doesn't process them until a consumer runs. Run a consumer for each queue you configure.

To process the ``email`` queue, run this command.

.. code-block:: shell

    php /path/to/mautic/bin/console messenger:consume email

To process the ``hit`` queue, run this command.

.. code-block:: shell

    php /path/to/mautic/bin/console messenger:consume hit

A consumer keeps running until you stop it. Keep consumers running with a process manager such as ``Supervisor`` or ``systemd``.

If you run a consumer from a Cron job instead, add at least one of these options so that each run stops:

* ``--time-limit=X`` - stops the consumer after X seconds.
* ``--limit=X`` - stops the consumer after it processes X messages.
* ``--memory-limit=X`` - stops the consumer when it uses more than X memory, for example ``128M``.

For example, this command processes the ``hit`` queue for up to 160 seconds.

.. code-block:: shell

    php /path/to/mautic/bin/console messenger:consume hit --time-limit=160

See :ref:`Process Email queue Cron job<Process Email queue Cron job>` for more information on scheduling the ``email`` consumer.
