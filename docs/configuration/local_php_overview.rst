LOCAL.PHP fields overview
#########################

You can manage most, but not all, Mautic configurations in the User Interface.
Either way, the settings live in the ``local.php`` file.
Here are the ``local.php`` parameters for Mautic 4.4.6:

.. list-table::
   :widths: 100 100 100
   :header-rows: 1

   * - Parameter
     - Value
     - Info
   * - ``allowed_extensions``
     - default: an indexed array with the values ``csv``, ``doc``, ``docx``, ``epub``, ``gif``, ``jpg``, ``jpeg``, ``mpg``, ``mpeg``, ``mp3``, ``odt``, ``odp``, ``ods``, ``pdf``, ``png``, ``ppt``, ``pptx``, ``tif``, ``tiff``, ``txt``, ``xls``, ``xlsx``, ``wav``
     - The "Allowed file extensions" parameter from the Mautic configuration :ref:`Theme settings`
   * - ``anonymize_ip``
     - default: ``0`` - for 'No'
     - The "Anonymize IP" parameter from the Mautic configuration :ref:`Tracking settings`
   * - ``api_batch_max_limit``
     - default: ``200``
     -
   * - ``api_enable_basic_auth``
     - default: ``false``
     - The "Enable http basic auth?" parameter from the Mautic configuration :ref:`API settings`
   * - ``api_enabled``
     - default: ``0`` - for 'No'
     - The "API enabled?" parameter from the Mautic configuration :ref:`API settings`
   * - ``api_oauth2_access_token_lifetime``
     - default: ``60`` - minutes
     - The "Access token lifetime in minutes" parameter from the Mautic configuration :ref:`API settings`
   * - ``api_oauth2_refresh_token_lifetime``
     - default: ``14`` - days
     - The "Refresh token lifetime in days" parameter from the Mautic configuration :ref:`API settings`
   * - ``api_rate_limiter_cache``
     - default: an associative array with key/value ``adapter`` = ``cache.adapter.filesystem``
     -
   * - ``api_rate_limiter_limit``
     - default: ``0``
     -
   * - ``background_import_if_more_rows_than``
     - default: ``0``
     - The "Automatically import in the background if the CSV has more rows than defined" parameter from the Mautic configuration :ref:`Contact settings`
   * - ``batch_campaign_sleep_time``
     - default: ``false``
     -
   * - ``batch_sleep_time``
     - default: ``1``
     -
   * - ``blacklisted_extensions``
     - default: an indexed array with the values ``php`` and ``sh``
     -
   * - ``cache_path``
     - path to the cache directory
     - The "Path to the cache" parameter from the Mautic configuration :ref:`General settings`
   * - ``cached_data_timeout``
     - default: ``10`` - minutes
     - The "Cached data timeout in minutes" parameter from the Mautic configuration :ref:`System defaults`
   * - ``campaign_by_range``
     - default: ``0`` - for 'No'
     - The "Use date range for all views" parameter from the Mautic configuration :ref:`Campaign settings`
   * - ``campaign_notification_email_addresses``
     - default: ``null``
     - The "Email addresses to receive notifications" parameter from the Mautic configuration :ref:`Notification settings`
   * - ``campaign_send_notification_to_author``
     - default: ``1`` - for 'Yes'
     - The "Send notification to author" parameter from the Mautic configuration :ref:`Notification settings`
   * - ``campaign_time_wait_on_event_false``
     - default: ``PT1H``
     - The "Wait time before retrying a failed action" parameter from the Mautic configuration :ref:`Campaign settings`
   * - ``campaign_use_summary``
     - default: ``0`` - for 'No'
     - The "Use summary statistics" parameter from the Mautic configuration :ref:`Campaign settings`
   * - ``cat_in_page_url``
     - default: ``0`` - for 'No'
     - The "Show category in page URL?" parameter from the Mautic configuration :ref:`Tracking settings`
   * - ``clean_webhook_logs_in_background``
     - default: ``false``
     -
   * - ``composer_updates``
     - default: ``0`` - for 'No'
     - The "Update Mautic through Composer - BETA" parameter from the Mautic configuration :ref:`Update settings`
   * - ``contact_columns``
     - default: an indexed array with values ``name``, ``email``, ``location``, ``stage``, ``points``, ``last_active`` and ``id``
     - The "Columns" parameter from the Mautic configuration :ref:`Contact list settings`
   * - ``cookie_httponly``
     - default: ``false``
     -
   * - ``cookie_path``
     - default: ``/``
     -
   * - ``cookie_secure``
     - default: ``true``
     -
   * - ``cors_restrict_domains``
     - default: ``1`` - for 'Yes'
     - The "Restrict Domains" parameter from the Mautic configuration :ref:`CORS settings`
   * - ``cors_valid_domains``
     - default: an empty indexed array
     - The "Valid Domains" parameter from the Mautic configuration :ref:`CORS settings`
   * - ``create_custom_field_in_background``
     - default: ``false``
     -
   * - ``contact_unique_identifiers_operator``
     - default: ``OR``
     - The "Merge by unique fields with operator" parameter from the Mautic configuration :ref:`Contact settings`
   * - ``company_unique_identifiers_operator``
     - default: ``OR``
     - The "Merge by unique fields with operator" parameter from the Mautic configuration :ref:`Company settings`
   * - ``csv_always_enclose``
     - default: ``0`` - for 'No'
     - The "Always quote data in CSV export" parameter from the Mautic configuration :ref:`Report settings`
   * - ``date_format_dateonly``
     - default: ``F j, Y``
     - The "Date format for date only" parameter from the Mautic configuration :ref:`System defaults`
   * - ``date_format_full``
     - default: ``F j, Y g:i a T``
     - The "Date format for full dates" parameter from the Mautic configuration :ref:`System defaults`
   * - ``date_format_short``
     - default: ``D, M d``
     - The "Date format for short dates" parameter from the Mautic configuration :ref:`System defaults`
   * - ``date_format_timeonly``
     - default ``g:i a``
     - The "Date format for time only" parameter from the Mautic configuration :ref:`System defaults`
   * - ``db_backup_prefix``
     - default: ``_bak``
     -
   * - ``db_backup_tables``
     - default: ``1``
     -
   * - ``db_driver``
     - default: ``pdo_mysql``
     -
   * - ``db_host``
     - individual
     -
   * - ``db_name``
     - individual
     -
   * - ``db_password``
     - individual
     -
   * - ``db_port``
     - individual
     -
   * - ``db_table_prefix``
     - default: ``null``
     -
   * - ``db_user``
     - individual
     -
   * - ``debug``
     - default: ``false``
     -
   * - ``default_daterange_filter``
     - default: ``-1 month``
     - The "Date Range Filter Default" parameter from the Mautic configuration :ref:`System defaults`
   * - ``default_pagelimit``
     - default: ``10``
     - The "Default item limit per page" parameter from the Mautic configuration :ref:`System defaults`
   * - ``default_signature_text``
     - default: ``Best regards, from name``
     -  The "Default Email signature" parameter from the Mautic configuration :ref:`Message settings`
   * - ``default_timezone``
     - default: ``UTC``
     - The "Default timezone" parameter from the Mautic configuration :ref:`System defaults`
   * - ``dev_hosts``
     - default: an empty indexed array
     -
   * - ``disable_trackable_urls``
     - default: ``0`` - for 'No'
     - The "Disable trackable URLs" parameter from the Mautic configuration :ref:`Message settings`
   * - ``do_not_submit_emails``
     - default: an empty indexed array
     - The "Do not accept submission from these domain names" parameter from the Mautic configuration :ref:`Form settings`
   * - ``do_not_track_bots``
     - default: an indexed array with 389 values
     - The "List of known Bots" parameter from the Mautic configuration :ref:`Miscellaneous settings`
   * - ``do_not_track_ips``
     - default: an empty indexed array
     - The "List of IP not to track Contacts with" parameter from the Mautic configuration :ref:`Miscellaneous settings`
   * - ``do_not_track_404_anonymous``
     - default: ``0`` - for 'No'
     - The "Do not Track 404 error for anonymous contacts" parameter from the Mautic configuration :ref:`Tracking settings`
   * - ``email_frequency_number``
     - default: ``0``
     - The "Do Not Contact more than" parameter from the Mautic configuration :ref:`Default frequency rule`
   * - ``email_frequency_time``
     - default: ``DAY``
     - The "Do Not Contact more than" parameter from the Mautic configuration :ref:`Default frequency rule`
   * - ``events_orderby_dir``
     - default: ``ASC``
     - The "Order of the queued events" parameter from the Mautic configuration :ref:`Webhook settings`
   * - ``facebook_pixel_id``
     - default: ``null``
     - The "Facebook Pixel ID" parameter from the Mautic configuration :ref:`Tracking settings`
   * - ``facebook_pixel_landingpage_enabled``
     - default: ``0`` - for 'No'
     - The "Enable on Mautic landing page" parameter from the Mautic configuration :ref:`Tracking settings`
   * - ``facebook_pixel_trackingpage_enabled``
     - default: ``0`` - for 'No'
     - The "Enabled on your tracking page" parameter from the Mautic configuration :ref:`Tracking settings`
   * - ``form_upload_dir``
     - path to the form upload directory
     -
   * - ``gcm_sender_id``
     - individual
     -
   * - ``google_analytics``
     - default: ``null``
     - The "Analytics script" parameter from the Mautic configuration :ref:`Landing page settings`
   * - ``google_analytics_anonymize_ip``
     - default: ``0`` - for 'No'
     - The "Enabled IP anonymize" parameter from the Mautic configuration :ref:`Tracking settings`
   * - ``google_analytics_id``
     - default: ``null``
     - The "Google Analytics ID" parameter from the Mautic configuration :ref:`Tracking settings`
   * - ``google_analytics_landingpage_enabled``
     - default: ``0`` - for 'No'
     - The "Enable on Mautic landing page" parameter from the Mautic configuration :ref:`Tracking settings`
   * - ``google_analytics_trackingpage_enabled``
     - default: ``0`` - for 'No'
     - The "Enabled on your tracking page" parameter from the Mautic configuration :ref:`Tracking settings`
   * - ``image_path``
     - path to the log directory
     - The "Path to the images" parameter from the Mautic configuration :ref:`General settings`
   * - ``install_source``
     - default: ``Mautic``
     -
   * - ``ip_lookup_auth``
     - default: ``null``
     - The "IP lookup service authentication" parameter from the Mautic configuration :ref:`Miscellaneous settings`
   * - ``ip_lookup_config``
     - default: an empty indexed array
     -
   * - ``ip_lookup_create_organization``
     - default: ``0``
     -
   * - ``ip_lookup_service``
     - default: ``maxmind_download``
     - The "IP lookup service" parameter from the Mautic configuration :ref:`Miscellaneous settings`
   * - ``last_shown_tab``
     - default: ``null``
     -
   * - ``link_shortener_url``
     - default: ``null``
     - The "URL Shortener" parameter from the Mautic configuration :ref:`Miscellaneous settings`
   * - ``locale``
     - default: ``en_US``
     - The "Default language" parameter from the Mautic configuration :ref:`System defaults`
   * - ``log_file_name``
     - default: ``mautic_prod.php``
     -
   * - ``log_path``
     - path to the log directory
     - The "Path to the log" parameter from the Mautic configuration :ref:`General settings`
   * - ``mailer_amazon_region``
     - default: ``us-east-1``
     - The "Amazon SES Region" parameter from the Mautic configuration :ref:`Mail send settings`
   * - ``mailer_amazon_other_region``
     - default: ``null``
     -
   * - ``mailer_api_key``
     - default: ``null``
     - The "ApiKey" parameter from the Mautic configuration :ref:`Mail send settings`
   * - ``mailer_append_tracking_pixel``
     - default: ``1`` - for 'Yes'
     - The "Append tracking pixel into Email body" parameter from the Mautic configuration :ref:`Message settings`
   * - ``mailer_auth_mode``
     - default: ``null``
     - The "SMTP authentication mode" parameter from the Mautic configuration :ref:`Mail send settings`
   * - ``mailer_convert_embed_images``
     - default: ``0`` - for 'No'
     - The "Convert embed images to Base64" parameter from the Mautic configuration :ref:`Message settings`
   * - ``mailer_custom_headers``
     - default: an empty associative array
     - The "Custom headers" parameter from the Mautic configuration :ref:`Mail send settings`
   * - ``mailer_encryption``
     - default: ``null``
     - The "SMTP encryption type" parameter from the Mautic configuration :ref:`Mail send settings`
   * - ``mailer_from_email``
     - individual
     - The "E-Mail address to send mail from the Mautic configuration :ref:`Mail send settings`
   * - ``mailer_from_name``
     - individual
     - The "Name to send mail as" parameter from the Mautic configuration :ref:`Mail send settings`
   * - ``mailer_host``
     - individual
     - The "SMTP host" parameter from the Mautic configuration :ref:`Mail send settings`
   * - ``mailer_is_owner``
     - default: ``0`` - for 'No'
     - The "Mailer is owner" parameter from the Mautic configuration :ref:`Mail send settings`
   * - ``mailer_mailjet_sandbox``
     - default: ``0`` - for 'No'
     - The "Sandbox mode - Mailjet" parameter from the Mautic configuration :ref:`Mail send settings`
   * - ``mailer_mailjet_sandbox_default_mail``
     - default: ``null``
     - The "Default mail for Sandbox mode - Mailjet" parameter from the Mautic configuration :ref:`Mail send settings`
   * - ``mailer_password``
     - default: ``null``
     - The "Username for the selected mail service" parameter from the Mautic configuration :ref:`Mail send settings`
   * - ``mailer_port``
     - default: ``null``
     - The "Port" parameter from the Mautic configuration :ref:`Mail send settings`
   * - ``mailer_return_path``
     - default: ``null``
     - The "Custom return path bounce address" parameter from the Mautic configuration :ref:`Mail send settings`
   * - ``mailer_reply_to_email``
     - default: ``null``
     - The "Reply to address" parameter from the Mautic configuration :ref:`Mail send settings`
   * - ``mailer_spool_clear_timeout``
     - default: ``1800``
     -
   * - ``mailer_spool_msg_limit``
     - default: ``null``
     -
   * - ``mailer_spool_path``
     - path to mailer spool
     -
   * - ``mailer_spool_recover_timeout``
     - default: ``900``
     -
   * - ``mailer_spool_time_limit``
     - default: ``null``
     -
   * - ``mailer_spool_type``
     - default: ``memory``
     - The "How should email be handled" parameter from the Mautic configuration :ref:`Mail send settings`
   * - ``mailer_transport``
     - individual
     - The "Service to send mail through" parameter from the Mautic configuration :ref:`Mail send settings`
   * - ``mailer_user``
     - default: ``null``
     - The "Username for the selected mail service" parameter from the Mautic configuration :ref:`Mail send settings`
   * - ``max_entity_lock_time``
     - default: ``0`` - seconds
     - The "Item max lock time" parameter from the Mautic configuration :ref:`Miscellaneous settings`
   * - ``max_log_files``
     - default: ``7``
     -
   * - ``max_size``
     - default: ``6`` - MB
     - The "The Maximum size in MB" parameter from the Mautic configuration :ref:`Asset settings`
   * - ``monitored_email``
     - default: an multidimensional array with the associative arrays ``general``, ``EmailBundle_bounces``, ``EmailBundle_unsubscribes``, ``EmailBundle_replies``
     - An array that contains the "Monitored Inbox Settings" parameter from the Mautic configuration :ref:`Monitored inbox settings`
   * - ``notification_app_id``
     - default: ``null``
     -
   * - ``notification_enabled``
     - default: ``false``
     -
   * - ``notification_landing_page_enabled``
     - default: ``true``
     -
   * - ``notification_rest_api_key``
     - default: ``null``
     -
   * - ``notification_safari_web_id``
     - default: ``null``
     -
   * - ``notification_subdomain_name``
     - default: ``null``
     -
   * - ``notification_tracking_page_enabled``
     - default: ``false``
     -
   * - ``parallel_import_limit``
     - default: ``1``
     -
   * - ``queue_mode``
     - default: ``immediate_process``
     - The "Queue Mode" parameter from the Mautic configuration :ref:`Webhook settings`
   * - ``rememberme_key``
     - individual
     -
   * - ``rememberme_lifetime``
     - default: ``31536000``
     -
   * - ``rememberme_path``
     - default: ``/``
     -
   * - ``report_export_batch_size``
     - default: ``1000``
     -
   * - ``report_export_max_filesize_in_bytes``
     - default: ``5000000``
     -
   * - ``report_temp_dir``
     - path to temporary report directory
     -
   * - ``resubscribe_message``
     - default text: ``Email has been re-subscribed. If this was by mistake, click here to unsubscribe.``
     - The "Resubscribed confirmation message" parameter from the Mautic configuration :ref:`Unsubscribe settings`
   * - ``saml_idp_default_role``
     - default: ``null``
     - The "Default role for created users" parameter from the Mautic configuration :ref:`User/Authentication settings`
   * - ``saml_idp_email_attribute``
     - default: ``EmailAddress``
     - The "Email attribute the configured IDP uses" parameter from the Mautic configuration :ref:`User/Authentication settings`
   * - ``saml_idp_entity_id``
     - individual
     - The "Use the following entity ID in the IDP" parameter from the Mautic configuration :ref:`User/Authentication settings`
   * - ``saml_idp_firstname_attribute``
     - default: ``FirstName``
     - The "First name attribute the configured IDP uses" parameter from the Mautic configuration :ref:`User/Authentication settings`
   * - ``saml_idp_lastname_attribute``
     - default: ``LastName``
     - The "Last name attribute the configured IDP uses" parameter from the Mautic configuration :ref:`User/Authentication settings`
   * - ``saml_idp_username_attribute``
     - default: ``null``
     - The "Username optional attribute the configured IDP uses" parameter from the Mautic configuration :ref:`User/Authentication settings`
   * - ``secret_key``
     - individual
     -
   * - ``segment_rebuild_time_warning``
     - default: ``30``
     - The "Show warning if Segment hasn't been rebuilt for x hours" parameter from the Mautic configuration :ref:`Segment settings`
   * - ``show_contact_categories``
     - default: ``0`` - for 'No'
     - The "Show Contact's Categories" parameter from the Mautic configuration :ref:`Unsubscribe settings`
   * - ``show_contact_frequency``
     - default: ``0`` - for 'No'
     - The "Show Contact frequency preferences" parameter from the Mautic configuration :ref:`Unsubscribe settings`
   * - ``show_contact_pause_dates``
     - default: ``0`` - for 'No'
     - The "Show pause Contact preferences" parameter from the Mautic configuration :ref:`Unsubscribe settings`
   * - ``show_contact_preferences``
     - default: ``0`` - for 'No'
     - The "Show contact preference settings" parameter from the Mautic configuration :ref:`Unsubscribe settings`
   * - ``show_contact_preferred_channels``
     - default: ``0`` - for 'No'
     - The "Show Contact's preferred Channel option" parameter from the Mautic configuration :ref:`Unsubscribe settings`
   * - ``show_contact_segments``
     - default: ``0`` - for 'No'
     - The "Show Contact Segment preferences" parameter from the Mautic configuration :ref:`Unsubscribe settings`
   * - ``site_url``
     - individual
     - The "Site URL" parameter from the Mautic configuration :ref:`General settings`
   * - ``sms_enabled``
     - default: ``false``
     -
   * - ``sms_frequency_number``
     - default: ``0``
     -
   * - ``sms_frequency_time``
     - default: ``DAY``
     -
   * - ``sms_password``
     - default: ``null``
     -
   * - ``sms_sending_phone_number``
     - default: ``null``
     -
   * - ``sms_transport``
     - default: ``null``
     - The "Select default transport to use" parameter from the Mautic configuration :ref:`Text message settings`
   * - ``sms_username``
     - default: ``null``
     -
   * - ``stats_update_url``
     - ``https://updates.mautic.org/stats/send``
     -
   * - ``system_update_url``
     - ``https://api.github.com/repos/mautic/mautic/releases``
     -
   * - ``theme``
     - default: ``blank``
     - The "Default theme" parameter from the Mautic configuration :ref:`Theme settings`
   * - ``theme_email_default``
     - default: ``blank``
     -
   * - ``theme_import_allowed_extensions``
     - default: an indexed array with the values ``json``, ``twig``, ``css``, ``js``, ``htm``, ``html``, ``txt``, ``jpg``, ``jpeg``, ``png``, ``gif``
     - The "Allowed file extensions from packages installation" parameter from the Mautic configuration :ref:`Theme settings`
   * - ``tmp_path``
     - path to the temporary directory
     -
   * - ``track_by_tracking_url``
     - default: ``0`` - for 'No'
     - The "Identify visitor by tracking URL" parameter from the Mautic configuration :ref:`Tracking settings`
   * - ``track_contact_by_ip``
     - default: ``0`` - for 'No'
     - The "Identify visitors by IP" parameter from the Mautic configuration :ref:`Tracking settings`
   * - ``track_private_ip_ranges``
     - default: ``false``
     -
   * - ``translations_fetch_url``
     - ``https://language-packs.mautic.com``
     -
   * - ``translations_list_url``
     - ``https://language-packs.mautic.com/manifest.json``
     -
   * - ``transliterate_page_title``
     - default: ``0`` - for 'No'
     - The "Translate page titles" parameter from the Mautic configuration :ref:`Miscellaneous settings`
   * - ``trusted_hosts``
     - individual
     - The "Trusted hosts" parameter from the Mautic configuration :ref:`Miscellaneous settings`
   * - ``trusted_proxies``
     - individual
     - The "Trusted proxies" parameter from the Mautic configuration :ref:`Miscellaneous settings`
   * - ``twitter_handle_field``
     - default: ``twitter``
     - The "Twitter Handle Field" parameter from the Mautic configuration :ref:`Social settings`
   * - ``unsubscribe_message``
     - default text: ``Unsubscribe to no longer receive emails from us.``
     - The "Unsubscribed confirmation message" parameter from the Mautic configuration :ref:`Unsubscribe settings`
   * - ``unsubscribe_text``
     - default text: ``Unsubscribe to no longer receive emails from us.``
     - The "Text for the {unsubscribe_text} token" parameter from the Mautic configuration :ref:`Unsubscribe settings`
   * - ``update_stability``
     - default ``stable``
     - The "Set the minimum stability level required for updates" parameter from the Mautic configuration :ref:`Update settings`
   * - ``upload_dir``
     - path to the asset directory
     - The "Path to the Asset directory" parameter from the Mautic configuration :ref:`Asset settings`
   * - ``webhook_disable_limit``
     - default: ``100``
     -
   * - ``webhook_email_details``
     - default: ``true``
     -
   * - ``webhook_limit``
     - default: ``10``
     -
   * - ``webhook_notification_email_addresses``
     - default: ``null``
     - The "Email addresses to receive notifications" parameter from the Mautic configuration :ref:`Notification settings`
   * - ``webhook_log_max``
     - default: ``1000``
     -
   * - ``webhook_send_notification_to_author``
     - default: ``1`` - for 'Yes'
     - The "Send notification to author" parameter from the Mautic configuration :ref:`Notification settings`
   * - ``webhook_time_limit``
     - default: ``600``
     -
   * - ``webhook_timeout``
     - default: ``15``
     -
   * - ``webroot``
     - individual
     - The "Mautic root URL" parameter from the Mautic configuration :ref:`General settings`
   * - ``webview_text``
     - default: ``Having trouble reading this email? Click here``
     - The "Text for the ``webview_text`` token" parameter from the Mautic configuration :ref:`Message settings`
   * - ``welcomenotification_enabled``
     - default: ``true``
     -
   * - ``404_page``
     - default: ``null`` - redirected to default 404 page
     - The "404 page" parameter from the Mautic configuration :ref:`General settings`