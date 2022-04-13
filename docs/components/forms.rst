Forms
#####

Mautic subscribers use Forms for lead generation and data collection. With Mautic Forms, marketers can convert anonymous web visitors to known Contacts and build a Contact's profile with progressive profiling. The more data you can gather without appearing intrusive or annoying, the more effective your personalization strategy will be.

Creating a new Form
*******************

To create a new Form:

#. Go to Components > Forms and click New
#. Select the type of Form you wish to create
   - **Campaign Form** - Mautic allows you to trigger a Campaign with the submission of this type of Form. Campaign Forms have less actions directly associated with the Form submit actions - which happen immediately after a Form is submitted - as most actions trigger as part of a Campaign workflow.
   - **Standalone Form** - A more commonly used Form, this allows many submit actions to be executed as soon as the Form is submitted. 

.. warning:: 
    Forms with a lot of submit actions - particularly when submitting to third party systems such as a Customer Relationship Management system - can have an impact on the Form submission time. This is especially true if there are a lot of fields. Consider using a Campaign Form if you can wait for the cron job to trigger the actions.

The following fields are available:

- **Category** - Assign a Category to help you organize your Forms.

- **Published** - Whether the Form is available for use - published - or not available - unpublished. Unpublished Forms won't be visible on pages you've added the Form to using JavaScript. If you used the manual method to copy and paste the Form HTML, the Form will still be visible but visitors will **not** be able to submit it - they will see an error message if they try to submit an unpublished form.

.. vale off

- **Publish at (date/time)** - This allows you to define the date and time at which this Form is available for submissions.

- **Unpublish at (date/time)** - This allows you to define the date and time at which this Form ceases to be available for submissions.

.. vale on

- **Disable search indexing** - If Yes, search engines will be prevented from finding and displaying the form in search results by sending the noindex http header.

- **Kiosk mode** - If Yes, Mautic turns off tracking of Contacts created through the Form, so no cookies are generated and no IP address is associated with the Contact record.  Marketers may refer to this as 'data entry mode'. It is ideal for using at conferences or events where several Contacts may enter their information using the same device, as it prevents the activity on the device being tied to one Contact.

- **Render style** - If Yes, the Form displays on your page or application with the styling from either the selected Mautic Theme or the Attributes tab of the Form fields.  When No, the Form adopts the styling of your page or application.

- **Theme** - Select a Mautic Theme which has styling for a Form. This dictates the styling of the Form when added to an external page or application if 'Render style' is set to Yes.

.. note:: 
    Not all Themes include Form styling. Check the Features column on your Themes page in the Theme Manager to see which Themes include styling for Forms.

Standalone Forms
================

Once you have selected to create a standalone Form, you will have some additional options which are not available with the Campaign Forms.

The available fields are:

- **Name** - Title your Form, including any terms you may want to use to search for the Form.
- **Description** - Add a description, so other Mautic Users can see what the goal of the Form is. It may help to include information like any pages where the Form appears.
- **Successful Submit Action** - Options include:
   * **Remain at form** - nothing appears to happen, the Form remains as it is
   * **Redirect URL** - directs the Contact to another page, such as a thank you page, after submission
   * **Display message** - shows a message over the Form once the Contact has submitted the Form.
- **Redirect URL/Message** - If you decide to use the Redirect URL successful submit action, paste the URL where you'd like to direct submitters. If you use Display message, enter the message to display.

.. image:: images/forms/standalone_form.png
  :width: 600
  :alt: Screenshot showing standalone Form
