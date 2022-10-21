.. vale off

Queue
#####

.. vale on

You can improved scalability by activating the queuing mechanism for Email and Page opens. Use this if you are getting too much traffic
at once from people opening Pages or opening Emails.

.. note:: 
    
    Mautic 3.x Users who are implementing RabbitMQ or Beanstalkd need to configure the settings directly in their local configuration file. If you are using the legacy Mautic 2.x series the steps below remains the same.

Activating
**********

You can activate and configure the queuing mechanism by going to
configuration:

* Open the administrator menu by clicking the cog icon in the top right corner.
* Select the *Configuration* menu item.
* Select the *Queue Settings* tab.
* Switch the *Queue Protocol* to either *RabbitMQ* or *Beanstalkd*.
* Save the configuration.

.. vale off

RabbitMQ
********

.. vale on

:xref:`RabbitMQ` is one of the available queue protocols that Mautic supports. To use it, you must have a RabbitMQ server running. On their :xref:`website`, you can obtain instructions on how to install RabbitMQ.  
For testing purposes, you can use :xref:`cloudamqp` which offers a RabbitMQ as a service.

Having set up a RabbitMQ server, you can configure Mautic to use it by setting the appropriate parameters ``mautic.rabbitmq_*`` in your installation's configuration file.

.. list-table:: RabbitMQ
   :header-rows: 1
   :widths: 40, 40, 60

   * - Parameter
     - Default	
     - Description
   * - ``rabbitmq_host``	
     - ``'localhost'``	
     - The ``hostname`` of the RabbitMQ server
   * - ``rabbitmq_port``	
     - ``'5672'``
     - The port that the RabbitMQ server is listening on
   * - ``rabbitmq_vhost``	
     - ``'/'``
     - The virtual host to use for this RabbitMQ server
   * - ``rabbitmq_user``	
     - ``'guest'``
     - The username for the RabbitMQ server
   * - ``rabbitmq_password``	
     - ``'guest'``	
     - The password for the RabbitMQ server
   * - ``rabbitmq_idle_timeout``	
     - ``0``	
     - 	The number of seconds after which the queue consumer should timeout when idle
   * - ``rabbitmq_idle_timeout_exit_code``	
     - ``0``	
     - 	The exit code to be returned when the consumer exits due to idle timeout

Beanstalkd
**********

:xref:`Beanstalkd` is another available queue protocol that Mautic supports. To use it, you must have a Beanstalkd server running. On :xref:`Beanstalkd website`, you can obtain instructions on how to install Beanstalkd.
   
Once you have setup a Beanstalkd server, you can configure Mautic to use it by setting the appropriate parameters ``mautic.beanstalkd_*`` in your installation's configuration file.   

.. list-table:: RabbitMQ
   :header-rows: 1
   :widths: 40, 40, 60

   * - Parameter
     - Default	
     - Description
   * - ``beanstalkd_host``	
     - ``'localhost'``	
     - The ``hostname`` of the Beanstalkd server
   * - ``beanstalkd_port``	
     - ``'11300'``
     - The port that the Beanstalkd server is listening on
   * - ``beanstalkd_timeout``	
     - ``'60'``
     - The default TTR for Beanstalkd jobs

Processing
**********

Activating the queuing mechanism queues up all page hits and email opens for later processing. You need to run some console commands on a regular basis to be able to process them.

To process the hits from a page, use the following command to do so:

``php /path/to/mautic/bin/console mautic:queue:process --env=prod -i page_hit``

To process the hits from an email, use the following command to do so:

``php /path/to/mautic/bin/console mautic:queue:process --env=prod -i email_hit``

When these commands run, they continue to run until you stop the program by using the keyboard combination ``Control + C``. If you want to run them to process only, say, 50 page hits or email hits, you can run the command like this instead:

``php /path/to/mautic/bin/console mautic:queue:process --env=prod -i page_hit -m 50``

or

``php /path/to/mautic/bin/console mautic:queue:process --env=prod -i email_hit -m 50``

Cron to push the jobs
*********************

You need to run the following cron to keep pushing the jobs.

``php /path/to/mautic/bin/console mautic:email:send``

See the documentation on :ref:`cron jobs<process email queue cron job>` for further information.
