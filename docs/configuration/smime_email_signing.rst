S/MIME Email signing
####################

S/MIME - Secure/Multipurpose Internet Mail Extensions - is a standard for public key encryption and signing of Multipurpose Internet Mail Extensions - MIME - data. Mautic supports S/MIME Email signing to help verify the authenticity of your Emails and ensure that the Email content wasn't modified in transit.

.. note::
    S/MIME signing is currently only available when using the SMTP Email transport. It doesn't work with API-based Email transports.

What's S/MIME Email signing?
****************************

S/MIME Email signing adds a digital signature to your Emails, which allows recipients to:

1. **Verify the sender's identity** - Confirm that the Email actually came from your organization
2. **Ensure Email integrity** - Verify that the Email content wasn't tampered with during transmission
3. **Build trust** - Demonstrate to recipients that your organization follows Email security best practices

.. note::
    This implementation focuses on **signing** Emails only. It doesn't encrypt the Email body, which means the Email content is still readable to anyone who has access to it. Many Email clients don't support S/MIME encryption, so signing provides verification without compatibility issues.

For more detailed information about S/MIME and why to use it, see these articles from SparkPost:

- :xref:`SparkPost S/MIME Overview`
- :xref:`SparkPost S/MIME Technical Guide`

How it works
************

When you turn on and properly configure S/MIME signing:

1. Mautic signs each outgoing Email with the private key for the sender's Email address
2. Mautic attaches the signature to the Email as a ``smime.p7s`` file
3. Recipients with S/MIME-capable Email clients can verify the signature using the public certificate
4. If no certificate exists for a sender's Email address, Mautic sends the Email unsigned without error

Turn on S/MIME signing
**********************

Turn on S/MIME signing through your Mautic configuration file. It isn't available in the web interface.

.. warning::
    Make sure you're using the SMTP Email transport before turning on S/MIME signing. The feature doesn't work with API-based Email transports.

Configuration
=============

Add the following configuration parameters to your ``app/config/local.php`` file:

.. code-block:: php

    <?php
    $parameters = array(
        // ... other configuration ...
        'smime_signing_enabled' => true,
        'smime_certificates_path' => '%kernel.project_dir%/var/smime_certificates',
    );

Configuration parameters
------------------------

``smime_signing_enabled``
    set to ``true`` to turn on S/MIME Email signing or ``false`` to turn it off.
    
    Default: ``false``

``smime_certificates_path``
    the absolute path to the directory where Mautic stores your S/MIME certificates. You can use ``%kernel.project_dir%`` to reference your Mautic installation directory.
    
    Default: ``%kernel.project_dir%/var/smime_certificates``

Generating S/MIME certificates
******************************

Each Email address that sends Emails from Mautic needs its own pair of certificates:

- A **public certificate** - ``.crt`` file - that verifies your identity
- A **private key** - ``.pem`` file - that signs the Emails

Self-signed certificates
========================

For testing purposes, you can create self-signed certificates. However, for production use, you should obtain certificates from a trusted Certificate Authority.

To create a self-signed certificate and private key:

.. code-block:: bash

    # Create a private key and certificate signing request
    openssl req -newkey rsa:4096 -nodes -keyout sender@example.com.pem -out sender@example.com.csr
    
    # Create a self-signed certificate valid for 1 year
    openssl x509 -req -days 365 -in sender@example.com.csr -signkey sender@example.com.pem -out sender@example.com.crt

.. important::
    Replace ``sender@example.com`` with the actual Email address you're using to send Emails from Mautic.

Production certificates
=======================

For production use, obtain S/MIME certificates from a trusted Certificate Authority - CA. Many Certificate Authorities offer S/MIME certificates, and the process typically involves:

1. Generating a Certificate Signing Request - CSR
2. Submitting the CSR to the CA along with identity verification documents
3. Receiving the signed certificate from the CA

For detailed instructions on obtaining production certificates, see the :xref:`SparkPost S/MIME Technical Guide`.

Installing certificates
***********************

Certificate file naming
=======================

Name certificates according to the Email address they're for:

- Public certificate: ``email@example.com.crt``
- Private key: ``email@example.com.pem`` - plain text - or ``email@example.com.pem.enc`` - encrypted

Replace ``email@example.com`` with the actual sender Email address.

.. important::
    The Email address in the filename must exactly match the **From** address used when sending Emails.

Certificate directory structure
===============================

Place your certificate files in the directory specified by ``smime_certificates_path``:

.. code-block:: text

    /var/smime_certificates/
    ├── admin@example.com.crt
    ├── admin@example.com.pem
    ├── support@example.com.crt
    └── support@example.com.pem

Setting permissions
===================

Ensure that the web server User has read access to the certificate directory and files:

.. code-block:: bash

    # Set ownership (replace www-data with your web server user)
    chown -R www-data:www-data /path/to/mautic/var/smime_certificates
    
    # Set directory permissions
    chmod 755 /path/to/mautic/var/smime_certificates
    
    # Set certificate permissions
    chmod 644 /path/to/mautic/var/smime_certificates/*.crt
    chmod 600 /path/to/mautic/var/smime_certificates/*.pem

.. warning::
    Private keys - ``.pem`` files - should have restrictive permissions - ``600`` - to prevent unauthorized access.

Encrypting private keys
***********************

To enhance security, you can encrypt your private keys using Mautic's encryption system. Mautic stores the encrypted private keys with the ``.pem.enc`` extension.

Benefits of encryption
======================

Encrypting private keys adds an extra layer of security:

- If someone compromises your server, they can't use the encrypted keys without Mautic's secret key
- The encryption uses your Mautic instance's ``secret_key`` from the configuration
- Mautic automatically decrypts the keys when needed to sign Emails

.. important::
    Make sure you have a ``secret_key`` configured in your ``app/config/local.php`` file. Mautic creates this automatically during installation.

Creating encrypted keys
=======================

To encrypt an existing private key:

1. Ensure your ``secret_key`` configures in ``app/config/local.php``
2. Use Mautic's encryption helper or the command line:

.. code-block:: bash

    # Using PHP to encrypt the key
    php -r "
    require 'app/config/local.php';
    require 'app/bundles/CoreBundle/Helper/EncryptionHelper.php';
    \$helper = new \Mautic\CoreBundle\Helper\EncryptionHelper(
        new \Mautic\CoreBundle\Helper\CoreParametersHelper(new \Symfony\Component\DependencyInjection\ParameterBag\ParameterBag(\$parameters))
    );
    \$key = file_get_contents('var/smime_certificates/sender@example.com.pem');
    file_put_contents('var/smime_certificates/sender@example.com.pem.enc', \$helper->encrypt(\$key));
    "

3. After creating the encrypted version, you can remove the plain text ``.pem`` file for security
4. Mautic automatically uses the encrypted version - ``.pem.enc`` - if it exists

Key priority
============

When looking for a private key, Mautic checks in this order:

1. Encrypted key: ``email@example.com.pem.enc``
2. Plain text key: ``email@example.com.pem``

If both exist, the encrypted version takes priority.

Testing S/MIME signing
**********************

After configuring S/MIME signing:

1. Send a test Email from Mautic using an Email address that has certificates configured
2. Select the Email source/headers in your Email client
3. Look for these indicators that Mautic signed the Email:

   - Content-Type header contains ``multipart/signed``
   - An attachment named ``smime.p7s``
   - protocol ``application/x-pkcs7-signature``

4. If your Email client supports S/MIME, you should see a verification indicator - such as a seal or checkmark

Troubleshooting S/MIME
**********************

Emails aren't signed
====================

If Mautic doesn't sign Emails, select:

1. **S/MIME enabled** - verify ``smime_signing_enabled`` sets to ``true`` in ``local.php``
2. **Using SMTP transport** - S/MIME only works with SMTP. Select your Email transport settings
3. **Certificates exist** - confirm the ``.crt`` and ``.pem`` files exist in the certificates directory
4. **Correct filenames** - certificate filenames must exactly match the sender Email address
5. **File permissions** - the web server User must have read access to the certificate files
6. **Select logs** - look in ``var/logs/mautic_prod.log`` for any S/MIME-related errors

Certificates not found errors
=============================

If you see certificate errors in the logs:

1. Verify the ``smime_certificates_path`` specifies correctly in your configuration
2. Select that Mautic names certificate files correctly - ``email@example.com.crt`` and ``.pem``
3. Ensure the Email address in the filename exactly matches the From address
4. Verify file permissions allow the web server User to read the files

Certificate validation errors
=============================

If recipients Reports certificate validation errors:

1. **Self-signed certificates** - these aren't trusted by default. Recipients need to manually trust them
2. **Expired certificates** - select your certificate expiration dates
3. **Certificate chain** - ensure you're using the full certificate chain from your Certificate Authority
4. **Domain mismatch** - the certificate's Email address must match the From address

Performance considerations
==========================

S/MIME signing adds a small amount of processing overhead to each Email:

- Mautic performs signing for each Email individually
- When you turn on S/MIME, Mautic turns off batch Email processing - token-based sending - to ensure proper signing
- For high-volume Email sending, monitor your server resources

Limitations
***********

Current limitations of S/MIME signing in Mautic:

1. **SMTP only** - S/MIME signing only works with the SMTP Email transport. API-based transports aren't supported.
2. **Signing only** - this implementation signs Emails but doesn't encrypt the Email body. The content is still readable.
3. **No batch processing** - when you turn on S/MIME, Mautic turns off batch Email processing - token-based sending - to ensure proper signing.
4. **One Email per request** - Mautic sends each Email individually rather than in batches.

.. note::
    If you turn on S/MIME signing and you're using a non-SMTP transport, Mautic forces sending one Email per request, but signing may not work correctly. Always use SMTP for S/MIME signing.

Additional resources
********************

For more information about S/MIME:

- :xref:`SparkPost S/MIME Overview`
- :xref:`SparkPost S/MIME Technical Guide`
- :xref:`OpenSSL Documentation`

Related documentation
*********************

- :doc:`/configuration/settings` - General Email settings configuration
- :doc:`/Channels/Emails` - Emails overview and management
- :doc:`/configuration/cron_jobs` - Setting up Cron jobs for Email sending
