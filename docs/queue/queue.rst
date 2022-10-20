.. vale off

Queue
#####

.. vale on


You can improved scalability by activating the queuing mechanism for Email and Page opens. Use this if you are getting too much traffic
at once from people opening Pages or opening Emails.

.. note:: 
    Mautic 3.x users who are implementing RabbitMQ or Beanstalkd need to configure the settings directly in their local configuration file. If you are using the legacy Mautic 2.x series the steps below remains the same.

Activating
**********

You can activate and configure the queuing mechanism by going to
configuration:

-  Open the administrator menu by clicking the cog icon in the top right corner.
-  Select the *Configuration* menu item.
-  Select the *Queue Settings* tab.
-  Switch the *Queue Protocol* to either *RabbitMQ* or *Beanstalkd*.
-  Save the configuration.

RabbitMQ
********