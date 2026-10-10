.. vale off

Queue
#####

.. vale on

With a queue, Mautic stores work such as sending an Email or recording a page hit, and processes it later instead of during the request that triggers it. Use queues if you send large volumes of Emails, or if many Contacts visit pages or open Emails at the same time.

Mautic uses Symfony Messenger and has two queues:

* **Queue for email (SMS and push messages)** - the ``email`` queue, for sending messages.
* **Queue for hits (page and email)** - the ``hit`` queue, for recording page hits and Email opens.

By default, both queues use the ``sync://`` DSN, so Mautic processes this work immediately without a queue.

Configure the queues
********************

Configure a queue when you want Mautic to process its messages in the background.

#. Open the Admin menu by selecting the cog icon in the top right corner.
#. Select **Configuration**.
#. Select the **Queue Settings** tab.
#. Under **Queue for email (SMS and push messages)**, **Queue for hits (page and email)**, or both, enter the **Scheme** of your queue transport and its connection details.
#. Select **Save**.

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

If you run a consumer from a cron job instead, add at least one of these options so that each run stops:

* ``--time-limit=X`` - stops the consumer after X seconds.
* ``--limit=X`` - stops the consumer after it processes X messages.
* ``--memory-limit=X`` - stops the consumer when it uses more than X memory, for example ``128M``.

For example, this command processes page hits and Email opens for up to 160 seconds.

.. code-block:: shell

    php /path/to/mautic/bin/console messenger:consume hit --time-limit=160

See :ref:`Process Email queue cron job` for more information on scheduling the ``email`` consumer.
