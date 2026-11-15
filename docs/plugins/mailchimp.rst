MailChimp
#########

This Plugin adds Contacts to MailChimp lists when a Campaign, a Form, or a Point Trigger runs an action that pushes Contacts to MailChimp.

Authorize
*********

Get MailChimp API key
=====================

#. Create a MailChimp account.
#. Go to **Account** > **Extras** > **API Keys** and create a new one.

   |

   .. image:: images/plugins-mailchimp-create-api-key-1-and-2.png
      :width: 800
      :alt: MailChimp account screen with arrows pointing at the Extras menu and its API keys option
      :align: center

   |

   .. image:: images/plugins-mailchimp-create-api-key-3a.png
      :width: 400
      :alt: Your API keys section in MailChimp with an arrow pointing at the Create A Key button
      :align: center

   |

   .. image:: images/plugins-mailchimp-create-api-key-3b-and-3c.png
      :width: 400
      :alt: Name New API Key screen in MailChimp with arrows pointing at the API Key Name field and the Generate Key button
      :align: center

   |

#. Copy the created API Key.

.. vale off

Configure the Plugin
********************

#. Go to **Settings** > **Plugins** and select **MailChimp**.

   |

   .. image:: images/plugins-mailchimp-plugins-list.png
      :width: 800
      :alt: Manage Plugins page with the MailChimp Plugin highlighted
      :align: center

   |

#. On the **Enabled/Auth** tab, set **Is Enabled?** to **Yes**.

   |

   .. image:: images/plugins-mailchimp-enabled-auth.png
      :width: 400
      :alt: MailChimp Plugin's highlighted Enabled/Auth tab with the enable switch set to Yes and an API key entered
      :align: center

   |

#. Paste the API key in the **API Key** field.
#. On the **Features** tab, select **Triggered action push contacts to integration**.

   |

   .. image:: images/plugins-mailchimp-features.png
      :width: 400
      :alt: MailChimp Plugin's highlighted Features tab with the push feature selected
      :align: center

   |

#. Select **Save & Close**.

.. vale on

Mautic asks for the API key only when you enable the Plugin. If you connected MailChimp through the OAuth authorization of an earlier Mautic version, Mautic keeps using that connection, and you can save the settings without an API key.

.. vale off

Push Contacts to MailChimp
**************************

.. vale on

Each push action has its own MailChimp list and field mapping, so different Campaigns, Forms, and Point Triggers can add Contacts to different lists.

.. vale off

#. Add a **Push contact to integration** action to a Campaign, a Form, or a Point Trigger.

   |

   .. image:: images/plugins-mailchimp-campaign-action-list.png
      :width: 400
      :alt: Campaign Builder Actions list with the push action highlighted
      :align: center

   |

#. Select **MailChimp** as the Integration.
#. In **List**, select the MailChimp list to add the Contacts to.
#. Set **Enable double opt in** and **Send welcome email** to **Yes** or **No**.
#. For each MailChimp field, select the Mautic field that provides its value. You must map a field to **Email**.

   |

   .. image:: images/plugins-mailchimp-push-action.png
      :width: 400
      :alt: Push action settings with the MailChimp Integration, the list, the opt-in and welcome Email switches, the Email field mapping, and the Add button highlighted
      :align: center

   |

#. Select **Add**.

.. vale on

If you don't have a list in MailChimp yet, create one in MailChimp before you add the action. The field mapping shows the merge fields of the list you select, and it reloads when you select another list. Besides Contact fields, you can map a MailChimp field to these values:

.. vale off

* **Contact ID**
* **Contact's timeline link**
* **Do not contact by email** - whether the Contact accepts Emails from Mautic

.. vale on

The list options control what MailChimp sends to the Contact:

.. vale off

* **Enable double opt in** - MailChimp sends a confirmation Email, and the Contact must confirm before joining the list. Until then, MailChimp lists the Contact as pending.
* **Send welcome email** - MailChimp sends its welcome Email to the Contact.

.. vale on

If the Contact has no value in the field mapped to **Email**, or MailChimp rejects the Contact, the action fails and shows the reason. In a Campaign, the reason appears on the failed event.
