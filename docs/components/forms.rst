Forms
#####

Mautic subscribers use Forms for lead generation and data collection. With Mautic Forms, marketers can convert anonymous web visitors to known Contacts and build a Contact's profile with progressive profiling. The more data you can gather without appearing intrusive or annoying, the more effective your personalization strategy.

.. vale off

Creating a new Form
*******************

.. vale on

To create a new Form:

#. Go to Components > Forms and click New
#. Select the type of Form you wish to create
   - **Campaign Form** - Mautic allows you to trigger a Campaign with the submission of this type of Form. Campaign Forms have less actions directly associated with the Form submit actions - which happen immediately after Form submission - as most actions trigger as part of a Campaign workflow.
   - **Standalone Form** - A more commonly used Form, this allows the execution of many submit actions immediately at the point of Form submission. 

.. warning:: 
    Forms with a lot of submit actions - particularly when submitting to third party systems such as a Customer Relationship Management system - can have an impact on the Form submission time. This is especially the case if there are a lot of fields. Consider using a Campaign Form if you can wait for the cron job to trigger the actions.

The following fields are available:

- **Category** - Assign a Category to help you organize your Forms.

- **Published** - Whether the Form is available for use - published - or not available - unpublished. Unpublished Forms won't be visible when you've added the Form using JavaScript. If you used the manual method to copy and paste the Form HTML, the Form remains visible but visitors **won't** be able to submit it - an error message prevents them from submitting if they try to submit an unpublished Form.

.. vale off

- **Publish at (date/time)** - This allows you to define the date and time at which this Form is available for submissions.

- **Unpublish at (date/time)** - This allows you to define the date and time at which this Form ceases to be available for submissions.

.. vale on

- **Disable search indexing** - If Yes, Mautic prevents search engines from finding and displaying the Form in search results by sending the ``noindex`` http header.

- **Kiosk mode** - If Yes, Mautic turns off tracking of Contacts created through the Form, so that the Form doesn't generate cookies or associate any IP address with the Contact record. Marketers may refer to this as 'data entry mode'. It's ideal for using at conferences or events where several Contacts may enter their information using the same device, as it prevents associating the activity on the device to Contacts.

- **Render style** - If Yes, the Form displays with the styling from either the selected Mautic Theme or the Attributes tab of the Form fields. When No, the Form adopts the styling of where it's embedded.

- **Theme** - Select a Mautic Theme which has styling for a Form. This dictates the styling of the Form when added to an external website or Application if 'Render style' is Yes.

.. note:: 
    Not all Themes include Form styling. Check the Features column on your Themes listing in the Theme Manager to see which Themes include styling for Forms.

.. vale off

Configuring Forms
*****************
.. vale on

Once you have selected the type of Form, you have some additional options to set.

Details
=======

The available details fields are:

- **Name** - Title your Form, including any terms you may want to use to search for the Form.
- **Description** - Add a description, so other Mautic Users can see what the goal of the Form is. It may help to include information like any location where the Form appears.
- **Successful Submit Action** - Options include:
   * **Remain at Form** - nothing appears to happen, the Form remains as is
   * **Redirect URL** - directs the Contact to another location, such as a thank you Landing Page, after submission
   * **Display message** - shows a message over the Form once the Contact has submitted the Form.
- **Redirect URL/Message** - If you decide to use the Redirect URL successful submit action, paste the URL where you'd like to direct submitters. If you use Display message, enter the message to display.

.. image:: images/forms/standalone_form.png
  :width: 600
  :alt: Screenshot showing standalone Form

Fields
======

To control the maximum number of fields shown on a Form:

- **Maximum fields displayed at a time** - This setting applies progressive profiling across multiple Forms. Select the maximum number of fields to display on a single Form.

To add a new field to your Form:

#. Click the Add a new field dropdown and select the type of field you wish to use. Available fields include:

   - **CAPTCHA** - A basic tool for spam protection requiring the Form submitter to answer a question, or detecting when spambots try to submit data in a hidden CAPTCHA field - sometimes referred to as a honeypot. It's recommended to use some kind of CAPTCHA on every Form. It's also possible to support reCAPTCHA and other tools with third-party Plugins.

   - **Checkbox Group** - This field allows a visitor to select one or more options from a list using checkboxes. This field type can also provide a single checkbox - for example to gain consent to use cookies and send marketing Emails or other messages to the Contact.

   .. note:: 
      You can associate checkbox group fields with *boolean* and *select - multiple* fields, but not *select* fields.

   - **Date** - This field allows the visitor to select a date with a calendar picker. The formatting of the date applies the default setting in your Configuration.

   - **Date/time** - Similar to the date field, this allows the visitor to select both the date and the time using a calendar picker.

   - **Description** - A basic header field, most often used to provide a visual title for the Form. The header field acts as the field name or label. The description area - accessed under the Properties tab - is a free text WYSIWYG editor, where you can add a description of the Form. By default, the description shows immediately below the header field in paragraph text format.

   - **Email** - This field requires the visitor to provide a valid Email address using the correct syntax expected from an Email address - ``name@domain.com``. It's recommended to have at least one Email field on your Form, as by default the Email field is the default identifier of a Contact in Mautic.

   - **File** - This allows visitors to upload a file on the Form.

   .. warning:: 
      When using the file upload field there is a limit of 1,000 submissions using the same filename. Note that you can attach the submitted files in the "Send Form result" action.

   - **HTML area** - This field allows marketers to add custom HTML to their Form.

   - **Hidden** - This field won't be visible on the Form, but include default values, saved along with the Form submission, for reporting or internal tagging purposes.

   - **List - Country** - This populates Mautic's default, non-editable country list. To use a custom list you should make use of the Select field type and manually enter the countries you would like to include.

   - **Page break** - This allows marketers to break up the Form into multiple parts or field groupings.

   - **Number** - This field validates that the entered values are digits. The field allows decimals and negative numbers, but no other non-numerical values - including commas. On a mobile device, the keyboard changes to a number pad when a visitor clicks into this field.

   - **Password** - This allows the visitor to create a password. Use this field if the Form creates an account and Mautic posts the results to another system/Form. You must not save the entered field value to the Contact profile for security reasons.

   - **Phone** - This field maps by default to the Phone field, and validates numbers using the international format for phone numbers. The validation requires a country code - for example +1 for the United States of America or +44 for the United Kingdom).

   - **Radio group** - This field provides a group of single-select options with a radio button, sometimes referred to as an option button group.

   - **Select** - This option shows a dropdown list where a visitor may choose one option. This field also allows multiple selections, which changes the display to a box with the options listed. On a mobile device, a single select box shows a dialog box with radio buttons, and with checkboxes for a multi-select field.

   - **Social login** - This allows the visitor to connect their Twitter, Facebook or LinkedIn profiles with their Contact record. You must configure the Plugin for the social network before using this field.

   - **Text** - This field shows a text box with 255 characters available. Common uses include specifying the visitor's first name, last name, city, and so forth.

   - **Text area** - Similar to the text field, but without the 255 character limitation. The text area field has a character limit of 65,535 characters.

   - **URL** - This field validates the entry as being in the expected format for a URL, including ``https://`` or ``http://``

Field options
=============

Based on the field selected, Mautic displays various tabs in the fields editor interface. The available tabs are:

- :ref:`General`
- :ref:`Mapped field`
- :ref:`Validation`
- :ref:`Properties`
- :ref:`Attributes`
- :ref:`Behavior`

General
~~~~~~~

- **Label** - This is the title of your field, telling the visitor what you'd like them to enter in the field. The label shows before the Form field by default.

- **Show label?** - When No, Mautic won't display the label on the Form.

- **Save result** - When No, Mautic won't save the data entered in the Form to the Form submissions table. When Yes, the submissions  are accessible in the Form submission results. If mapped to a Contact field, Mautic still saves the data to that field.

- **Default value** - This allows the marketer to provide a default value for a field. The default value is useful when setting a value as a hidden field, or when you expect the visitor to enter a certain value. The Contact can change the default value when they complete the Form if the field is visible.

- **Help message** - This allows the marketer to add information for the visitor about what they should enter in the field, or why they should provide the information.

- **Input placeholder** - This allows the marketer to add text within the Form field, which gives the visitor an idea of what they should enter. The text disappears as soon as they click into the field, whereas default values don't. This can be particularly helpful in prompting the visitor if you require the data in a particular format, for example ``@Twitter`` for a Twitter account, including the ``@`` symbol.

Mapped field
~~~~~~~~~~~~

The mapped field tab allows the marketer to connect a field with an existing Contact or Company field in Mautic. This allows the data from the Form submission to automatically populate into the mapped field. Without the mapping, this information won't save in the Contact profile.

The data type for the Form field should match the data type of the mapped field. For example, a date/time field should map to a Contact or Company field which uses the date/time field.

Validation
~~~~~~~~~~

The validation tab allows you to set whether the field is mandatory or not. If the field is mandatory and it's not completed by the visitor, the Form displays an error and the visitor sees a message informing them that they must complete the field before submitting the Form.

Switch the slider to ``Yes`` to make the field mandatory.

.. image:: images/forms/form_validation.png
  :width: 600
  :alt: Screenshot showing Form validation

It's also possible to add a validation message specific to this field, giving the visitor a prompt when they submit the Form and haven't included this field.

Properties
~~~~~~~~~~

The properties tab won't show on every field type. Different field types have different associated properties to configure.

CAPTCHA
-------

.. image:: images/forms/captcha_form_properties.png
  :width: 600
  :alt: Screenshot showing CAPTCHA Form properties

With a CAPTCHA field, the answer field should be blank if you are using this as a honeypot to trap spam submissions. This hides the field, and spambots try to populate the field with data. 

Mautic recognizes if there's data in a honeypot CAPTCHA field and understands that it can't be a human submitting the Form. 

To have a human answer a basic question or statement - for example ``What's 2+2`` or ``Enter 'CAPTCHA' here`` - you would enter the expected input in the answer field, in this case, ``4`` or ``CAPTCHA``.  The field's label should be the question, or you can use the label CAPTCHA and then have the question as the input placeholder.

The custom error message allows you to display something which informs the human if they have entered the wrong information. The default message is ``The answer to "{label}" is incorrect. Please try again``.

Checkbox group, radio group and select
--------------------------------------

.. image:: images/forms/checkbox_field_values.png
  :width: 600
  :alt: Screenshot showing checkbox field values with a mapped custom field

With the checkbox, radio box and select fields, the properties tab allows you to choose what should be available for the visitor to select.

If you have mapped the Form field to a Custom Field in Mautic, there is also the option to use the values provided in the Custom Field rather than listing them separately. This helps to prevent duplication and errors in the Form options.

If you prefer to create your own field options, the ``Optionlist`` allows you to add options with a label and value pair.

The label field controls the display of the field to the visitor completing the Form, and the value field controls the data saved to the database and stored against the Contact record. While they often match this might not always be the case. For example with a GDPR checkbox, the label might be ``Yes I accept that I may receive Email communications from this Company`` whereas the value stored to the database may be ``Yes`` or ``1``.

In select fields, there are two additional settings to allow for setting the Empty Value - which serves the same purpose as the Input Placeholder and isn't saved to the database - and to determine whether to allow multiple values, which changes the field from ``Select`` to ``Select - Multiple``.

Description area
----------------

Use the text entry field in the properties tab of the Description field to enter the information you would like to show with the Form - for example why the visitor should complete the Form. Often this information might display on the website, but you can also include it in the Form itself with this field.

File
----

.. image:: images/forms/form_file_upload.png
  :width: 600
  :alt: Screenshot showing file upload properties

When uploading a file within a Form there are several options under the properties tab:

- Allowed file extensions: it's possible to set the file extensions permitted by providing a comma separated list.
- Maximum file size: the maximum size of attachment - also limited by server settings.
- Public accessible link to download: can you access the file via a public link?
- Set as Contact profile image: set the image uploaded to be their Contact avatar

Attributes
~~~~~~~~~~

Behavior
~~~~~~~~
