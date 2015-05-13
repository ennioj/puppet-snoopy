# rentabiliweb-snoopy

[![Build Status](https://travis-ci.org/rentabiliweb/puppet-snoopy.svg?branch=master)](https://travis-ci.org/rentabiliweb/puppet-snoopy)

#### Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
4. [Usage](#usage)
    * [Install](#install)
    * [Uninstall](#uninstall)
5. [Development](#development)

## Overview

The rentabiliweb-snoopy module  enables you to install,  deploy, and configure
snoopy.

## Module Description

Snoopy sends every executed command to syslog.

https://github.com/a2o/snoopy

## Setup

```puppet
include snoopy
```

## Usage

You can configure all options in the main class.

### Install

```puppet
class { 'snoopy':
  package => true,
  service => true,
}
```

### Uninstall

```puppet
class { 'snoopy':
  package => false,
}
```

## Development

Rentabiliweb  modules on  the  Puppet  Forge are  open  projects, and  community
contributions are  essential for keeping  them great.  We can’t access  the huge
number  of   platforms  and  myriad   of  hardware,  software,   and  deployment
configurations that  Puppet is intended to  serve so feel free  to contribute on
GitHub.

Thanks https://github.com/puppetlabs/ for help to write this README :)
