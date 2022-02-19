---
title: 'Configuring Mautic Using DDEV'
taxonomy:
category:
- docs
slug: install-mautic-from-github
twitterenable: true
twittercardoptions: summary
articleenabled: false
orgaenabled: false
orga:
ratingValue: 2.5
orgaratingenabled: false
personenabled: false
facebookenable: true
googledesc: 'How to configure Mautic using DDEV?'
twitterdescription: 'How to configure Mautic using DDEV?'
facebookdesc: 'How to configure Mautic using DDEV?'
---
## Configuring Mautic Using DDEV

DDEV is an open-source tool that simplifies the process to set up and run PHP projects on your machine. 

You can setup an extended, version controlled, and shared local development environment for Mautic using DDEV by following these steps:

1. Installing Docker and DDEV
1. Cloning Mautic GitHub repository
1. Setting up local environment using DDEV

<!--https://kb.mautic.org/knowledgebase/development/how-to-install-mautic-using-ddev-->
<!--https://www.mautic.org/blog/developer/managing-mautic-with-composer-->

### Installing Docker and DDEV

![Docker must be installed](https://docs.docker.com/desktop/mac/images/docker-app-drag.png)

You must install Docker and docker-compose before using ddev. For more information on setting up a Docker Desktop, visit [this](https://ddev.readthedocs.io/en/stable/users/docker_installation/) page.

For more information on installing DDEV, visit [this](https://ddev.readthedocs.io/en/stable/#installation)page.

### Cloning Mautic GitHub Repository

Clone the Mautic code repository into a desired location. For more information on cloning the GitHub repository using CLI, visit the CLI section of [this]() page.

### Setting up DDEV Environment

To setup the Mautic local environment using DDEV:

1. Navigate to the root directory of the Mautic installation.
2. From your project's working directory, configure a project directory for DDEV. 

   ```ddev config```
1. Enter project name as **Mautic**, docroot as **?**, and project type as **?**. 
1. After `ddev config`, launch your Mautic project.

   ```ddev start```

   DDEV outputs status messages indicating that the project environment is starting. When the startup is complete, ddev outputs a message with a link (for example, `mautic.ddev.site`) to access your project in a browser.
The initialization process may take some time the first DDEV instance, as it downloads all the Docker containers.
1. Since the project has been cloned from GitHub, connect to the running DDEV container using SSH.

    ``` ddev ssh ``` 

1. From inside the container, run the Composer to install the PHP dependencies. 

   ```composer install```

    This spins up a DDEV instance at ```[projectname].ddev.site``` in your browser to launch the next steps for Mautic installation. To use DDEV with HTTPS, visit the [Launching DDEV with HTTPS](#launching-ddev-with-https) section.
1. Enter the following settings within your browser to complete the Mautic installation process.

The Mautic instance within the DDEV container is running. To stop the DDEV container, run ```ddev stop``` in the CLI.

## Extending DDEV Environment

ddev provides several ways in which the environment for a project using ddev can be customized and extended. This section lists some of the common tips and tricks for extending DDEV environment.

### Launching DDEV with HTTPS

You can run your local Mautic DDEV container over HTTPS using the mkcert package, without any configuration. The mkcert package  generates a trusted development certificate for your local machine, and then pushes it to ddev-global-cache.

To use ddev with HTTPS, visit [this](https://github.com/FiloSottile/mkcert) GitHub page to install mkcert. Run ```mkcert -install``` to create and save a certificate for your local machine. You may need to restart an open browser for the changes to take effect.

The certificate will automatically get pushed to ddev-global-cache the next time you start the ddev container to access your local Mautic installation at `https://[projectname].ddev.site`.

### Running Mautic Using DDEV

Mautic CLI commands can be executed from inside or outside of the DDEV container.

To run Mautic from inside the DDEV container, connect to the DDEV container using sh shell ```ddev ssh```, and enter the desired Mautic CLI commands. 

For example, enter ```bin/console cache:clear --env=dev``` for clearing the cache, ```bin/console mautic:campaigns:update``` for triggering the campaigns update, or ```exit``` to return to your local machine.

To run Mautic from outside the DDEV container (without using ```ddev ssh``` to connect), prefix your command with ```ddev exec```.

For example, enter ```ddev exec bin/console cache:clear --env=dev``` for clearing the cache, ``` ddev exec bin/console mautic:campaigns:update``` for triggering the campaigns update without getting connected to the DDEV container.

### Step Debugging with ddev and xdebug

Every ddev project is automatically configured with xdebug for step-debugging of PHP code. It is disabled by default for performance reasons, and must be enabled in ```config.yaml``.

You can enable and disable debugging by running ```ddev exec enable_xdebug``` and ```ddev exec disable_xdebug``` respectively.

For more information on PHP step debugging, visit [this](https://ddev.readthedocs.io/en/latest/users/step-debugging/) page.

### Changing PHP Version

To change the PHP version:

1. Navigate to ```.ddev/config.yaml```, and edit the ```php_version``` parameter. You must also change the version number on any additional packages you have set on the line ```webimage_extra_packages```. 
1. Save your changes.
1. Run ```ddev restart``` to implement the change.

### Using PHPMyAdmin

A DDEV instance comes with PHPMyAdmin by default. 
To retreive container information such as URL of the PHPMyAdmin instance of the current project, enter ```ddev describe```.

[github-cli]: <https://cli.github.com>
[ddev]: <https://ddev.readthedocs.io/en/stable/>
[installing-mautic]: </setup/how-to-install-mautic>