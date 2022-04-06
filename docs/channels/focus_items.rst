Focus Items
###########

Focus items allow you to engage users on your site through bars, modals, notifications, popups, and lightboxes. These can be initiated at different times and with different actions such as exit intent.

Focus Items are listed under the Channels menu.

Focus Item settings
*******************
There are several different types of Focus Items, and many ways to configure them to deliver your strategic marketing goals.

Types of Focus Item
===================

There are three different types of Focus Item that you can create within Mautic.  These allow you to achieve different marketing goals with your Focus Items.  Select the appropriate option for your needs.

  .. image:: images/focus_items/focus_item_types.png
    :width: 400
    :alt: Screenshot showing the types of Focus Items.

- **Collect Data** - This option presents a form (must already exist) within the Focus Item.  This allows you to gather more information about your website visitors.  A successful conversion on this type of Focus Item is considered to be a submission of this form.  This option is great for capturing simple information - for example a newsletter signup
- **Display a Notice** - This option presents a message to your visitors. There is no option for detecting a conversion with this type of Focus Item.  This option is great for announcements and important messages.
- **Emphasize a link** - This option allows you to drive visitors to a specific link which might be a page on your website, a Mautic Landing Page, or any other web-based resource.  A successful conversion with this Focus Item is considered to be a click on this link.  This option is great for Landing Pages to highlight a promotion or a sale - it displays a button to click which will direct the visitor to a given link.

Engagement options
==================

For each type of Focus Item, there are settings that can be configured to control how they are triggered, and how they interact with the visitor.

  .. image:: images/focus_items/focus_item_engagement.png
    :width: 400
    :alt: Screenshot showing the engagement settings for Focus Items.

- **Animate** - When set to Yes, this applies a slide-in animation to the Focus Item.  When set to No, the item appears without any kind of sliding motion.
- **When to engage** - This setting controls when a contact will be shown the Focus Item.  There are several options:
   - **Upon arrival** - As soon as a visitor lands on the page
   - **After slightly scrolling down** - Wait a little while until the visitor starts to scroll down the page
   - **After scrolling to the middle** - Wait until the visitor scrolls to the middle of the page
   - **After scrolling to the bottom** - Wait until the visitor scrolls right to the bottom of the page
   - **Visitor intends to leave** - If the visitor's cursor moves over the address bar, or from the page to the tabs (for example to close the tab or open a new tab)
- **Timeout before engage** - This option allows you to set the delay (in seconds) after reaching the option selected in **When to engage**. For example, if **Upon arrival** is set and **Timeout before engage** is set to 2 seconds, the Focus Item will appear two seconds *after* the visitor lands on the page.
- **How often to engage** - This option allows you to control how frequently the Focus Item is shown to visitors. The options available include:
   - **Every page** - Show on every page the visitors engages with on your website
   - **Once per session** - Show once for each time that the visitor accesses your website
   - **Every 2 minutes** - Show the Focus Item every two minutes that the visitor is on your website
   - **Every 15 minutes** - Show the Focus Item every 15 minutes that the visitor is on your website
   - **Once per hour** -  Show the Focus Item once every hour that the visitor is on your website
   - **Once per day** - Show the Focus Item once per day that the visitor is on your website
- **Stop engaging after a conversion** - This option is only available for the types which track a conversion (Collect Data and Emphasize a Link).  If set to Yes, the Focus Item will no longer display if the visitor has either submitted the form (Collect Data type) or clicked on the link (Emphasize a Link type).

Styles
======

There are four styles to choose from when creating a Focus Item.  Each style has different configuration options relevant to the layout they provide.

  .. image:: images/focus_items/focus_item_styles.png
    :width: 400
    :alt: Screenshot showing the styles for Focus Items.

Bar
~~~
The Bar style creates a line across the top or bottom of the page, which includes the content of your Focus Item.

- **Allow hide** - when this is set to Yes, website visitors will have a small arrow to hide the bar. This will be displayed on the right hand side of the bar.  Once clicked, the bar shrinks to hide the content but the arrow will still be visible in case they want to maximise it again with a single click.  If this option is set to No, the bar cannot be hidden by the visitor.
- **Push page down** - This option allows the page content to be pushed up or down under the bar if set to Yes. If set to No, the bar will cover the content at the top or bottom of the page (depending on placement setting).
- **Make sticky** - If this is set to yes, the bar will stay anchored in position even when the visitor scrolls the page. If set to No, the bar will not be anchored and will disappear as the visitor scrolls the page, and re-appear as they reverse the scroll.
- **Placement** - This option allows you to display the bar at the top or the bottom of the page.
- **Size** - This option allows you to specify the thickness of the bar, and the font size to be used. The options include:
    - **Large** - 50px height and 17pt font
    - **Regular** - 30px height and 14pt font

Modal
~~~~~
The Modal style is probably the most popular style, and is often referred to as a pop-up or a lightbox.

Modals are small boxes which appear aligned horizontally centred on the page.  The content behind the pop-up is darkened when the Focus Item is active, which helps to draw attention (focus) to the pop-up.

- **Placement** - This option allows you to select whether you would like the Modal to appear at the top, middle or bottom of the page.

Notification
~~~~~~~~~~~~

The Notification style is a small box which appears, sometimes referred to as a pop-up.  Unlike with the Modal style, the positioning is set to one of the four corners of the page, and the main content underneath the notification is not darkened out behind the pop-up.

Visitors can choose to close this type of Focus Item with the *X* button in the top right corner of the notification.

- **Placement** - This option allows you to select which corner you would like the notification to be displayed in.

Full Page
~~~~~~~~~

The Full Page Focus Item completely takes over the whole page, hiding the rest of the page content until the visitor clicks the *X* button in the top right hand corner of the Focus Item.

There are no additional configuration options for this style of Focus Item.

Colors
======

By default, Mautic will determine the top colors extracted from the snapshot. Four colors are currently supported, which can be customized by using the color picker or entering a hex code.

- **Primary color**
  - For the Bar style, the primary color will be the background color of the bar
  - For the Modal, Notification and Full Page styles, the primary color is used as the outline around the Focus Item with a thicker line on top than on the other three sides.
- **Text color** - The color of the headline text entered in the Content section of the Focus Item editor
- **Button color** - The background color for the button on the Collect Data and Emphasize Link Focus Item types.  This option is not available for the Display a notice Focus Item type.
- **Button text color** - The color for the button text on the Collect Data and Emphasize Link Focus Item types.  This option is not available for the Display Notice Focus Item type.

Content
=======
There are three editing modes to choose from when customizing Focus Items.

  .. image:: images/focus_items/focus_item_content.png
    :width: 400
    :alt: Screenshot showing the content options for creating Focus Items.

Basic
~~~~~
This editor mode allows a simplified experience with a few fields - depending on the Focus Item type - with the content being automatically rendered on the Focus Item as it is created.

- **Headline** - This is the main text that will be used on the Focus Item. The aim is to capture the visitor's interest and attention.
- **Tagline** - This option is only available for Emphasize a Link Focus Item types.  It allows you to provide a second line of text to add more incentive for the visitor to click on the link.  This field is optional.
- **Font** - This option allows you to select from available fonts to be used in the Focus Item.  The font list is not customizable.
- **Select the form to insert** - This option is only available for Collect Data Focus Item types. It allows you to select an existing Mautic Form to use with the Focus Item. For styling and formatting reasons, you may want to create a form specifically to be used with the Focus Item, adding styling attributes to the Attributes tab on the Form fields.
- **Link text** - This option is only available for Emphasize a Link Focus Item types. It allows you to specify the text that should be used on the Focus Item's button.
- **Link URL** - This option is only available for Emphasize a Link Focus Item types. It allows you to specify the URL where you'd like to drive visitors to with the Focus Item.
- **Open in a new window** - This option is only available for Emphasize a Link Focus Item types. If set to Yes, this ensures that when the link is clicked, it is opened in a new window.  If set to No, the link will open in the current tab.

Editor
~~~~~~
This allows the user to edit the content with the global editor available in Mautic.

HTML
~~~~
This allows the user to enter HTML into a blank field for a fully customized Focus Item.

.. note:: 
    If you decide to switch editing styles, ensure that you clear the data from the previous style, otherwise Mautic may not display the final intended content.


Creating a Focus Item
*********************

To create a new Focus Item, go to Channels > Focus Items and click on the New button.

.. warning:: 
    Some websites will not allow the preview to be displayed. For the preview to work, the site must be secured with an SSL certificate, and it must not block iframe previews with the x-frame-options: SAMEORIGIN header. An error will be displayed in the Focus Item builder if these conditions are not met.

When creating a new Focus Item, you can set the following fields:

**Name** - A name which will be used internally to identify the Focus Item

**Website** - A website you would like to use to preview the Focus Item as you are building it - see note above, some websites will not allow this functionality. If this is a problem, leave the URL field blank.

**Category** - Assign a Category to help you organize your Focus Items.

**Published** - Whether the Focus Item is available for use (published) or not (unpublished)

**Publish at (date/time)** - This allows you to define the date and time at which this Text Message will be available for sending to Contacts

**Unpublish at (date/time)** - This allows you to define the date and time at which this Text Message will cease to be available for sending to Contacts.

**Google Analytics UTM tags** - Mautic supports UTM tagging in Emails, Focus Items, and Landing Pages. Any UTM tags with values populated are automatically appended to the end of any links used in the focus item.  See :doc:`/channels/utm_tags` for more information.

  .. image:: images/focus_items/focus_item_create.png
    :width: 400
    :alt: Screenshot showing the creation of a Focus Item.

Using the Focus Item Builder
============================

After you specify the general information for the focus item, click the Builder option in the top right corner. If you've specified a URL in the Website field on the details page, the system displays a preview. If you don't, the website might block iframe previews. Hence, you must add the focus item to a development or staging environment (if available) to see the preview.

.. note:: 
    The preview of the website doesn't appear until you select a style from the options on the Focus Item Builder.

  .. image:: images/focus_items/focus_item_builder.png
    :width: 400
    :alt: Screenshot showing the Focus Item Builder

You can use the menu on the sidebar to configure the Focus Item to your liking. The preview area on the left allows you to see how it will appear on your website. You can also use the mobile phone icon at the top right to switch to a responsive view.  This is important to ensure that you are not blocking key elements of the user experience on mobile devices.

  .. image:: images/focus_items/focus_item_builder_responsive.png
    :width: 400
    :alt: Screenshot showing the Focus Item Builder in responsive mode.

Using Focus Items
*****************

Once you have created your Focus Item, you're ready to publish it to your website.  If you're not quite ready for the Focus Item to go live, but you need to get it set up on your website, you can set the Focus Item to Unpublished.

Deploying to a website
======================

When you save the Focus Item, the code snippet required to display it on your website will be shown in a green box on the Focus Item overview page.

  .. image:: images/focus_items/focus_item_embed.png
    :width: 400
    :alt: Screenshot showing the Focus Item code to be embedded within a website.

.. note:: 
    You may need assistance from your web development team to implement the Focus Item tracking code on your website.  

    You must also ensure that you have specified your website's domain where the Focus Item is being displayed in the CORS settings for your Mautic instance, otherwise it will not appear. To check this, go to Settings > Configuration > System Settings > CORS Settings and set Restricted Domains to Yes. Ensure that your domain is specified in the field.  Alternatively (but not recommended, as this would allow other websites to display your Focus Items), set Restrict Domains to No and don't specify your domains.

Deploying through a Campaign
============================

It is possible to trigger a Focus Item to appear as part of a Campaign workflow. This does not require you to paste the Focus Item code onto your website as it is delivered through the existing Mautic Tracking Code.

Within the Campaign, add a decision for Visits a Page, and then select the Action of Show Focus Item. Note that it must be preceded by Visits a Page to be triggered.

.. warning:: 
    Sometimes the Campaign Action can be unreliable and it is dependent on your campaign steps, so it is recommended to use the direct embedding method in most cases.

Measuring success
*****************

When the Emphasize a Link type is used, Mautic displays the link on the Focus Item overview page where you can view the number of unique clicks.

If you change the link in a Focus Item after it was deployed, all links will be listed in the overview page.

Additionally, UTM tags on Focus Items are applied to both Form submissions and link clicks.  If you are using a Focus Item to submit a Form, it is recommended that you have a Submit Action on the Form to record the UTM tags.