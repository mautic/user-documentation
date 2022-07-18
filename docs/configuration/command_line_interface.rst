.. vale off

Command Line Interface (CLI) commands
#####################################

.. vale on

Mautic may require you to use the command line (CLI). Listed below are the available CLI commands.

.. note:: 

  You can find this list (and others - for example commands relating to Doctrine and other vendors) by running this command: ``bin/console``

  You must be in the Mautic root directory to run the CLI commands. 

**Format**: command [options] [arguments]

Options
=======

.. vale off

.. list-table:: 
   :widths: 100 100
   :header-rows: 1

   * - Options
     - Description
   * - -h, \--help
     - Display this help message
   * - -q, \--quiet
     - Do not output any message
   * - | V, \--version
       |  \--ansi
       |  \--no-ansi
     - | Display this app version
       | Force ANSI output
       | Disable ANSI output
   * - -n, \--no-interaction
     - 	Do not ask any interactive question
   * - | -s, \--shell
       |  \--process-isolation
     - | Launch the shell.
       | Launch commands from shell as a separate process.
   * - | -e, \--env=ENV
       |  \--no-debug
     - | The Environment name. [default: "prod"]
       |  Switches off debug mode.
   * - | -v
       | -vv
       | -vvv
       |  \--verbose
     - | Increase the verbosity of messages:
       | 1. for normal output,
       | 2. for more verbose output and
       | 3. for debug

       
.. vale on

Mautic commands
===============
These are the commands you may need to use in relation to your Mautic instance. Add a ``bin/console`` before Mautic command.

**Example**

.. code-block:: shell

  bin/console mautic:social:monitoring

.. vale off

.. list-table:: 
   :widths: 100 100
   :header-rows: 1

   * - Command
     - Description
   * - mautic:assets:generate
     - Combines and minifies Asset files from each bundle into single production files
   * - mautic:broadcasts:send
     - Process Contacts pending to receive a channel broadcast.
   * - mautic:campaigns:execute
     - Execute specific scheduled events.
   * - mautic:campaigns:messagequeue
     - Process sending of messages queue.
   * - mautic:campaigns:messages
     - Process sending of messages queue.
   * - mautic:campaigns:rebuild
     - Rebuild Campaigns based on Contact Segments.
   * - mautic:campaigns:trigger
     - Trigger timed events for published Campaigns.
   * - mautic:campaigns:update
     - Rebuild Campaigns based on Contact Segments.
   * - mautic:campaigns:validate
     - Validate if a Contact has been inactive for a decision and execute events if so.
   * - mautic:citrix:sync
     - Synchronizes registrant information from Citrix products
   * - mautic:contacts:deduplicate
     - Merge contacts based on same unique identifiers
   * - mautic:email:fetch	
     - Fetch and process monitored Email.
   * - mautic:emails:send
     - Processes SwiftMail's mail queue
   * - mautic:import
     - Imports data to Mautic
   * - mautic:integration:fetchleads
     - Fetch leads from Integration.
   * - mautic:integration:pipedrive:fetch
     - Pulls the data from Pipedrive and sends it to Mautic
   * - mautic:integration:pipedrive:push
     - 	Pushes the data from Mautic to Pipedrive
   * - mautic:integration:pushactivity
     - Push lead activity to Integration.
   * - mautic:integration:pushleadactivity
     - Push lead activity to Integration. 
   * - mautic:integration:synccontacts
     - Fetch leads from Integration.
   * - mautic:iplookup:download
     - Fetch remote datastores for IP lookup services that leverage local lookups.
   * - mautic:maintenance:cleanup
     - Updates the Mautic app.
   * - mautic:messages:send
     - Process sending of messages queue.
   * - mautic:migrations:generate
     - Generate a blank migration class.
   * - mautic:plugins:install
     - Installs, updates, enable and/or turn-off Plugins.
   * - mautic:plugins:reload
     - Installs, updates, enable and/or turn-off Plugins.
   * - mautic:plugins:update
     - Installs, updates, enable and/or turn-off Plugins.
   * - mautic:queue:process
     - Process queues
   * - mautic:reports:scheduler
     - Processes scheduler for Report's export
   * - mautic:segments:check-builders
     - Compare output of query builders for given Segments
   * - mautic:segments:rebuild
     - Update Contacts in smart Segments based on new Contact data.
   * - mautic:segments:update
     - Update Contacts in smart Segments based on new Contact data.
   * - mautic:social:monitoring
     - Looks at the records of monitors and iterates through them.
   * - mautic:theme:json-config
     - Converts Theme config to JSON from PHP
   * - mautic:unusedip:delete
     - Deletes IP addresses that aren't used in any other database table
   * - mautic:update:apply
     - Updates the Mautic app.
   * - mautic:update:find
     - Fetches updates for Mautic
   * - mautic:webhooks:process
     - Process queued Webhook payloads
   * - social:monitor:twitter:hashtags
     - Looks at the monitoring records and finds hashtags.
   * - social:monitor:twitter:mentions
     - Searches for mentioned tweets

.. vale on

Doctrine commands
=================

.. list-table:: 
   :widths: 100 100
   :header-rows: 1

   * - Command
     - Description
   * - doctrine:fixtures:load
     - Installs Mautic sample data, overwriting existing data.
