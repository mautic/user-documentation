Maxmind license
###############

From the :xref:`2.16 release`, Mautic has supported using a license key to access the MaxMind IP lookup service.

.. danger:: 

    From the 3.2 release the format for the license key needs to be ``AccountID:Licensekey``. You can locate the Account ID directly preceding the license keys table.

Follow these steps to configure your Mautic instance to use the license key.

1. Create a MaxMind account by going to :xref:`MaxMind Signup`

2. After signing up, verify your Email and follow the steps to access your :xref:`MaxMind Account`.

3. Click the Contact icon at the top right of the menu to login

.. image:: images/mautic-maxmind-account.png
  :width: 600
  :alt: Screenshot of Maxmind Account

4. After logging in, under services click ``My License Key`` on the left hand side in the menu

.. image:: images/maxmind-license-key-2.png
  :width: 600
  :alt: Screenshot of Maxmind license key

5. Then, Click ``Generate new License Key``

.. image:: images/maxmind-generate-key-2.png
  :width: 600
  :alt: Screenshot of Maxmind Generate key

6. Answer ``Will this key be used for GeoIP Update?`` with No and confirm

.. image:: images/maxmind-confirm-key.png
  :width: 600
  :alt: Screenshot of Maxmind confirm key

7. Copy the license key that you see on the screen and note down the Account ID preceding the license key table

.. image:: images/maxmind-license-key.png
  :width: 600
  :alt: Screenshot of Maxmind license key

8. Go to Mautic > Settings > Configuration > System Settings > Miscellaneous Settings and enter the license key into the "IP lookup service authentication" **field in the format** ``AccountID:Licensekey``.

.. image:: images/mautic-maxmind-license-key.png
  :width: 600
  :alt: Screenshot of Maxmind license key

9. Click ``Fetch IP Lookup Data Store``. This downloads the IP lookup database to your Mautic instance.

10. Set up the :ref:`cron jobs` to periodically download a fresh copy.



