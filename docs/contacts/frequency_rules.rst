.. vale off

Frequency rules
###############

.. vale on

Frequency rules are a set of rules used to define the number of times you should communicate with a Contact by any means in Mautic. Mautic implements this for the Email and SMS Channels currently, but this applies to other Channels as appropriate, such as social media mentions or messages sent in another Channel.

How to set frequency rules
***************************

.. vale off

* Globally, from the configuration panel, you can set frequency rules for both Email and SMS settings.
* Individually, from a Contact's detail page under the dropdown menu on the upper right-hand side, you can select the Channels where you want the rules to apply. Setting the rule here overrides the general settings.

.. vale on

Emails and frequency rules
**************************

.. vale off

The **Send to unsubscribed contacts** setting configured in the Email's Advanced tab determines whether an Email counts towards the Contact's communication limits.

* When you set **Send to unsubscribed contacts** to **Yes**, the Email doesn't count towards frequency rule limits. Mautic delivers important transactional communications regardless of how many other Emails the Contact has received.
* When you set **Send to unsubscribed contacts** to **No**, the Email counts towards the Contact's frequency rule limits. If a Contact has reached their limit, Mautic postpones the Email until the limit resets.

.. vale on

See :ref:`send to unsubscribed Contacts` for more information.
