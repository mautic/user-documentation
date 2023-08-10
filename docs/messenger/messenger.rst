Messenger
=========

Messenger is a feature in Mautic 5.x that offers several significant benefits:

.. _highlights:

**Load distribution/control**
    It enables you to balance and control the server load effectively.

**Improved client response**
    By processing requests in the background, it ensures that the client receives a response before the completion of the request processing.

**Scalability**
    It provides the flexibility to scale your Mautic instance by adding more workers.

**Support for multiple transports**
    Messenger comes with support for various transports. It requires a configuration file for using a transport other than synchronous. You also have the capability to dispatch different types of messages to different transports. Furthermore, it's possible to create multiple different transports for a single endpoint. For instance, while one Doctrine transport uses the :code:`messages_hit` table, another could use the :code:`messages_email`.

**Based on Symfony Messenger Component**
    The Messenger feature is built upon the Symfony's Messenger component, offering robust performance and features.

.. note::

    Existing Mautic customers on version 3.x or 4.x who have used the now obsolete QueueBundle would need to configure Messenger to continue using it. Also, Messenger is already implemented for email (this document does not cover it), allowing users to configure it in Mautic's UI settings.

Configuration
=============

.. note::

    The default configuration needs no changes and will work out of the box. With the default settings, the messages will be processed synchronously and no messenger will be used.

Transports
----------

A transport is a connection to an endpoint that can receive and serve messages (understand work payload). For example, a synchronous transport has no endpoint and instead, the handler is called directly. In comparison, the RabbitMQ transport (AMQP) uses a RabbitMQ server as an endpoint and will send and fetch these messages from remote server. Doctrine transport uses a database.

For more information, refer to the `Symfony documentation <https://symfony.com/doc/current/messenger.html#transports>`_.

Failed Transport
^^^^^^^^^^^^^^^^

Failed transport in Symfony Messenger is a feature that helps with managing failed messages. A failed message is a message that could not be handled by a message handler due to an exception or error.

Symfony Messenger automatically catches exceptions thrown by handlers. Depending on the transport configuration, the message can either be retried or sent to the "failure transport".

This failure transport serves as a storage for these failed messages and allows you to view, debug, and retry the processing of these messages manually.


Routing
-------

Every message needs to have a transport associated with it. The synchronous transport is a valid selection. By default, PageHit and EmailHit messages are routed to the **hit** transport, which is configured as synchronous.

.. code-block:: php

    MauticMessengerTransports::HIT    => [
        'dsn'        => 'sync://',
        'serializer' => 'messenger.transport.jms_serializer',   // Smaller payload
    ],

.. _default-configuration:

The default configuration is as follows
---------------------------------------

.. code-block:: php

    'routing' => [
        \Symfony\Component\Mailer\Messenger\SendEmailMessage::class => MauticMessengerTransports::EMAIL,
        \Mautic\MessengerBundle\Message\PageHitNotification::class  => MauticMessengerTransports::HIT,
        \Mautic\MessengerBundle\Message\EmailHitNotification::class => MauticMessengerTransports::HIT,
    ],

For more information on routing, refer to the `Symfony documentation <https://symfony.com/doc/current/messenger.html#routing-messages-to-a-transport>`_.


Consuming Messages
==================

To consume or process messages from a transport, Symfony Messenger provides a console command ``messenger:consume``. You can specify the transport(s) as an argument, or it will consume messages from all configured transports by default.

.. hint:::: You don't need to run this command if you are not using any asynchronous transport.

Here's an example of consuming messages from a transport:

.. code-block:: bash

    php bin/console messenger:consume your_transport

Replace ``your_transport`` with the name of your transport.

To consume messages from all transports, you would use:

.. code-block:: bash

    php bin/console messenger:consume

The command will keep running and consume messages as they come until it's manually stopped.


Minimal working configuration that makes use of doctrine transport
------------------------------------------------------------------

.. hint::

  The configuration should be placed anywhere the container builder is available.
    Proposed location is ``app/config/config_local.php``.

.. code-block:: php

    $container->loadFromExtension('framework', [
        'messenger' => [
            'failure_transport' => 'failed', // Define other than default if you wish
            'transports'        => [
                MauticMessengerTransports::HIT    => [
                    'dsn'        => 'doctrine://default',
                    'serializer' => 'messenger.transport.jms_serializer',   // Smaller payload
                ],
            ],
        ],
    ]);

As the two hit messages that are implemented are routed(see :ref:`default-configuration`.) to the MauticMessengerTransports::HIT transport, the above configuration will make sure that the messages are sent in the database.

Final thoughts
==============

.. warning::

    Existing Mautic customers on version 3.x or 4.x who have used the now obsolete QueueBundle would need to configure Messenger to continue using it. Also, Messenger is already implemented for email (this document does not cover it), allowing users to configure it in Mautic’s UI settings.

.. note::

    This documentation is not intended to cover all aspects of the Messenger component or all its potential configurations. For comprehensive information and advanced configuration options, please refer to the official `Symfony documentation <https://symfony.com/doc/current/messenger.html>`_.