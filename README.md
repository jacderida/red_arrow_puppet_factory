Red Arrow Puppet Factory
========================

This is a Puppet based repository for generic automation configurations. The intention is to have various base boxes available for experimentation with different operating systems, and also have a repository of generic configurations for platforms like Postgres, MySQL, Subversion (sadly, I have actually had to setup Subversion servers) and anything else that would serve as a useful reference for things I'm using at work or on personal projects.

I'm going to have a mirror of this repository using Ansible as the configuration management provider. I'd prefer to use that rather than Puppet, but I'm also going to maintain this repository, because for the time being, I need to use Puppet at work.

Why Red Arrow? It's a place from Vernor Vinge's first novel, 'The Peace War'. It's where the 'tinkers' built their equipment to rebel against 'The Peace Authority'. OK, so it doesn't quite fit with the theme, but I wanted something better than 'generic automation' :).

Automated Configurations
------------------------

| Name                                       | Description                           | OS     | OS Version   | Provider   |
| ------------------------------------------ | ------------------------------------- | ------ | :----------: | :--------: |
| base\_box\_nocm-vbox-CentOS\_6.6-x86\_64   | Base box without Puppet installation. | CentOS | 6.6          | vbox       |
| base\_box\_nocm-vbox-CentOS\_7.0-x86\_64   | Base box without Puppet installation. | CentOS | 7.0          | vbox       |
| base\_box\_nocm-vbox-Ubuntu\_12.04-x86\_64 | Base box without Puppet installation. | Ubuntu | 12.04        | vbox       |
| base\_box-vbox-CentOS\_7.0-x86\_64         | Base box with Puppet installed.       | CentOS | 7.0          | vbox       |
| base\_box-vbox-Ubuntu\_12.04-x86\_64       | Base box with Puppet installed.       | Ubuntu | 12.04        | vbox       |
