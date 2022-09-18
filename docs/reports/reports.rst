.. vale off

Reports
#######

.. vale on

Mautic's Report menu allows you to generate highly customizable Reports.

You can use the reporting tools to track marketing metrics, identify marketing activities that are effective (or need improvement), and troubleshoot or investigate if you are curious about why something is happening.

To get to Reports, click the Reports link from the menu on the left side of your instance. To create a new report, click the **+New** button in the top right corner.

.. image:: images/mautic-report.png
   :align: center
   :alt: Screenshots of Mautic Report

|

.. vale off

Data Sources
============

.. vale on

The **Details** tab on a Report contains the same options across all Reports and provides some general options for your report.

.. image:: images/mautic-report-details.png
   :align: center
   :alt: Screenshots of Mautic Report Details

* **Name** - Specify a Report name that makes it easy for you and other Users to identify the purpose of the Report.

* **Data Source** - Select the data source appropriate to the report that you are building. Note that each data source has a different set of available columns, filters, and graphs. The available data sources are:

1. Assets

   * Assets
   * Asset Downloads

2. Campaigns
   
   * Campaign Events

3. Channels Messages
   
   * Message Queue

4. Emails
    
   * Emails
   * Emails Sent

5. Forms
   
   * Forms
   * Form Submissions

6. Contacts
   
   * Contacts
   * Multi Touch Attributions
   * First Touch Attributions
   * Last Touch Attributions
   * Contact Point Log
   * Frequency Rules
   * Segment Membership
   * Do Not Contact
   * UTM Codes

7. Companies
   
   * Companies

8. Mobile Notifications
   
   * Mobile Notifications
   * Mobile Notifications Sent

9. Pages
    
   * Landing Pages
   * Page hits

10. Videos

    * Video hits

As shown above, Mautic displays data source in the format: <Parent data source> <Child data source>

The parent data source provides a high-level summary of the data while the child data source provides a more granular view of Contact behavior that includes your custom fields and values.

* **Description (optional)** - Add detailed information about the report, helping you and other users better understand what the report is for. You may want to include more information about filters, people, or departments.

* **Published** - Set this toggle bar to Yes to ensure that the report is active and can be sent at whatever schedule is set in the report options.

* **System Report** - Set this toggle bar to Yes so that all users can access the report. If set to No, only the owner of the report and users with permission to view others reports can see the report.

* **Owner** - Select the owner of the report to determine who can see the report if System Report is set to No.

* **Dynamic filters settings**

  - Show opened by default - If you want to ensure that the date filters and filter options for any other report filters are visible on a report detail page without needing to open the filters drop-down, set this toggle bar to Yes. For example, for an Emails report, you might want to view dynamic filters for Subject or Sent Date.
  - Hide date range - To hide the date range filter so that users can’t change the dates that the report displays data for, set the toggle bar to Yes.


Data
====

You can customize each Report to include the columns of choice. Filter data based on set criteria and/or set a specific order for the data. In addition you can also group by and select different function operators to calculate fields. Note that when you select functions operators a totals row will be added to the report. This totals row will not be exported when selecting to export a report.

.. image:: images/mautic-report-data.png
   :align: center
   :alt: Screenshots of Mautic Report Data

|

* **Columns** - Select the columns of data that you want to appear in the table of data in the report. To select a column to appear, click the column name in the left column. To clear a column, click it from the right column. For example, if you select ID, it refers to the **ID** for the parent data source Category that you selected earlier (Contact ID, email ID, Asset ID, etc). It is recommended that you include **ID** in all reports.

* **Order** - Select data Points to be used for sorting the data in the report. The available sort options are **Ascending** and **Descending**. To add multiple columns, click **Add Order**. For fields that use text, an **Ascending** order lists values starting with B after values starting with A (and so on). For number or date fields, the higher the number or later the date, the lower on the list the row is. Descending order is the opposite.

.. note:: 

   If you add multiple fields to order by, the last one in the Order list is used first. For example, if you order by **First Name Ascending** and then add **Email Ascending**, the Email column is sorted first and any duplicate rows is then sorted by first name ascending.

* **Filters** - Filter the data by using conditions and values. Hence, you can generate granular reports. This option helps you to narrow down the data included in the report. The data points used for filters don’t have to be columns that appear in the report table. A commonly used filter for any reports that include Contact record data is Email Not Empty, which displays only identified Contacts in the Report. Additional use cases can be including Contacts or items that match a certain value, events happening within a certain date range, etc.

.. note:: 

   Setting the **Dynamic** option to **Yes** makes it easier for Users viewing the Report to change the data they see without actually editing the Report. Users can see the filter by opening the **Filters** drop-down from the top of the report page.

* **Group by** - Select the columns for which you want to group data. By default, reports show all items individually. In many reports, you may see the same contact, company, or item appear multiple times. To only see each record listed once, you can add a grouping based on some attribute for the record. You can use Email or Contact ID to display a single row per Contact record. For example, you can group by **Contact ID** to view the unique number of Asset Downloads or Form Submissions for a single Form, instead of total Asset Downloads or Form Submissions, which could include duplicates.

* **Calculated columns** - Select the function that you want to apply to individual columns. Calculated columns display count, average, sum, or the minimum or maximum values from a selected field. They are only available when a grouping is used to show a calculation for that grouping. Continuing with the previous example of grouping by a contact ID number or email address, a COUNT calculation displays how many times that contact record appears on the report if not for the grouping.

Graphs
======

.. image:: images/mautic-report-graph.png
   :align: center
   :alt: Screenshots of Mautic Report Data

|

Some report types display graphs for visualization purposes. You can include such graphs in reports and use them in dashboard widgets.

* To select an available graph and add it to the report, click the name of the graph to move it from the left column to the right.
* To remove a graph from a report, click the name in the right column to move it to the left.
  
The availability and types of graphs vary by report type. 

Schedule
========

Mautic enables scheduling Emails to send downloadable links containing the report data in the ``.csv`` file format.

Use the toggle switch to enable or disable sending Reports via Email.

* Email report - Set this toggle bar to **Yes** to see additional options.

* To - Specify the Email addresses that should receive the report. To send to multiple recipients, separate their Email addresses with a comma. For example, ``example1@yourcompany.com``, ``example2@yourcompany.com``. 

* **Every** - Select the frequency with which you’d like to automatically send the report:

  - **now** - Sends the report once, when the report is saved.
  - **day** - Sends the report every day at midnight in your time zone.
  - **week** - After selecting week, select the day of the week you’d like to send the report. The report is sent at midnight in your time zone each week on the selected day.
  - **month** - After selecting month, select either first or last and a day of the week. For example, set your report to be automatically sent on the first Monday or last Friday of each month. 

Alternatively, you can select Weekdays to send the report on the first or last weekday of each month.

Once you’ve set all of the options you’d like in the **Details**, **Data**, **Graphs**, and **Schedule** tabs, click **Save & Close** to save the report. Clicking **Apply** saves the progress you’ve made on building the report and keeps you in the edit mode.

Cron job to schedule reports
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To be able to send scheduled reports, the following cron command is required:

``php /path/to/mautic/bin/console mautic:reports:scheduler [--report=ID]``

The ``--report=ID`` argument allows you to specify a report by ID if required. For more information, see :ref:`Cron jobs<send scheduled reports cron job>`.

Report Options
==============

Once you’ve saved the report, go to your reports list to see the new report.

.. image:: images/mautic-report-options.png
   :align: center
   :alt: Screenshots of Mautic Report Options

|

To view additional options for report, click the drop-down menu next to the check box.

* **Edit** takes you directly to the edit mode, rather than clicking on the view page and editing from there.

* **Clone** copies the report so that you can make small adjustments in a similar but new report, while maintaining the original report.

* **Export & Send** sends a link containing the ``.csv`` file with the report data to the Email address on your User profile.

* **Delete** deletes the report immediately.

Exporting reports
=================

.. image:: images/mautic-exporting-reports.png
   :align: center
   :alt: Screenshots of Mautic Exporting Report

In addition to the **Schedule** and **Export & Send** features, Campaign Studio supports exporting reports in the ``.csv,`` Excel, or HTML format. From the reports list, click any report. Open the drop-down menu in the top right corner and select the preferred export format.

To download the report immediately:

1. On the Schedule tab, do one of the following:

   * Set the toggle bar to **No**.
   * In the **Every** field, set the value to now.

2. Click **Save & Close**.

3. On the Report details page, click the dropdown on the top right and click **Export to CSV**.

4. Reset the schedule as needed.

Reporting data is also available to export by API. For more information, see the :xref:`API documentation`.

