.. vale off

Searching Mautic
################

.. vale on

Search operators and filters
============================

Mautic offers a variety of search operators and filters for drilling down into relevant resources. You can find the available search filters and operators by clicking on the button with a question mark next to the search input.
The search filters for that entity aren't available if such a button is missing.

.. image:: images/contacts-search.png
   :align: center
   :alt: Mautic Contact search
   
|

Mautic also has a 'global search' feature. In the top left-hand corner, click the magnifying glass icon next to the Mautic logo/notifications icon. This will open a search input where you can search across multiple different entities.

.. image:: images/global-search.png
   :align: center
   :alt: Mautic global search

|

Search operators
----------------

Here are some search operators you can use:

* ``+`` plus sign - Search for the exact string, for example, if administrator, then administrator won't match.

* ``!`` exclamation mark - Not equals string
  
* ``" "`` double quotes - Search by phrase
  
* ``( )`` parentheses - Group expressions together.
  
* ``OR`` - By default the expressions joins as ``AND`` statements. Use the OR operator to change that.

* ``%`` - Use the % as a wildcard to search for specific names or values in a phrase for example, to find all Companies with the word ‘Technologies’ then type %technologies%
  
Search filters
--------------

Here are some search filters you can use:

Contacts
~~~~~~~~

.. code-block::
    
    is:anonymous
    is:unowned
    is:mine
    email:*
    segment:{segment_alias}
    name:*
    company:*
    owner:*
    ip:*
    ids:ID1,ID2 (comma separated IDs, no spaces)
    common:{segment_alias} + {segment_alias} + ...
    tag:*
    stage:*
    email_sent:EMAIL_ID
    email_read:EMAIL_ID
    email_queued:EMAIL_ID
    email_pending:EMAIL_ID

Companies
~~~~~~~~~

.. code-block:: 

    ids:ID1,ID2 (comma separated IDs, no spaces)
    is:published
    is:unpublished
    is:mine
    is:uncategorized
    category:{category alias}

Segments
~~~~~~~~

.. code-block:: 

    ids:ID1,ID2 (comma separated IDs, no spaces)
    is:global
    name:*
    category:category-alias

Assets
~~~~~~

.. code-block:: 

    ids:ID1,ID2 (comma separated IDs, no spaces)
    is:mine
    is:published
    is:unpublished
    name:*
    is:uncategorized
    category:{category alias}

Forms
~~~~~

.. code-block:: 
   
    ids:ID1,ID2 (comma separated IDs, no spaces)
    is:mine
    is:published
    is:unpublished
    has:results
    name:*
    is:uncategorized
    category:{category alias}

.. vale off

Landing Pages
~~~~~~~~~~~~~

.. vale on

.. code-block:: 

    ids:ID1,ID2 (comma separated IDs, no spaces)
    is:published
    is:unpublished
    is:mine
    is:uncategorized
    is:prefcenter
    category:{category alias}
    lang:{lang code}

Dynamic content
~~~~~~~~~~~~~~~

.. code-block:: 

    ids:ID1,ID2 (comma separated IDs, no spaces)
    is:published
    is:unpublished
    is:mine
    is:uncategorized
    is:prefcenter
    category:{category alias}
    lang:{lang code}

Emails
~~~~~~

.. code-block:: 

    ids:ID1,ID2 (comma separated IDs, no spaces)
    is:published
    is:unpublished
    is:mine
    is:uncategorized
    category:{category alias}
    lang:{lang code}

Focus items
~~~~~~~~~~~

.. code-block:: 

    ids:ID1,ID2 (comma separated IDs, no spaces)
    is:published
    is:unpublished
    is:mine
    is:uncategorized
    category:{category alias}

Manage actions
~~~~~~~~~~~~~~

.. code-block:: 

    ids:ID1,ID2 (comma separated IDs, no spaces)
    is:published
    is:unpublished
    is:mine
    is:uncategorized
    category:{category alias}

Manage triggers
~~~~~~~~~~~~~~~

.. code-block:: 

    ids:ID1,ID2 (comma separated IDs, no spaces)
    is:published
    is:unpublished
    is:mine
    is:uncategorized
    category:{category alias}

Stages
~~~~~~

.. code-block:: 

    ids:ID1,ID2 (comma separated IDs, no spaces)
    is:published
    is:unpublished
    is:mine
    is:uncategorized
    category:{category alias}

Reports
~~~~~~~

.. code-block:: 

    ids:ID1,ID2 (comma separated IDs, no spaces)
    is:published
    is:unpublished
    is:mine
    Categories
    ids:ID1,ID2 (comma separated IDs, no spaces) is:published is:unpublished

Users
~~~~~

.. code-block:: 

    ids:ID1,ID2 (comma separated IDs, no spaces)
    is:admin
    is:active
    is:inactive
    email:*
    name:*
    position:*
    role:*
    username:*
    Roles
    ids:ID1,ID2 (comma separated IDs, no spaces)
    is:admin
    name:*

Webhooks
~~~~~~~~

.. code-block:: 

    ids:ID1,ID2 (comma separated IDs, no spaces)
    is:published
    is:unpublished
    is:mine
    is:uncategorized
    is:prefcenter
    category:{category alias}
    lang:{lang code}