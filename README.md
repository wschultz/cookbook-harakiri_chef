Description
===========

Stops the chef-client service if it's running, and asks it to not start at boot.

Requirements
============

## Platform:

* Debian/Ubuntu
* CentOS/RedHat

## Cookbooks:

###


Recipes
=======

## default

Stops the chef-client service if it's running. 

Usage
=====

    include_recipe "harakiri_chef"

This is useful for building a new server via chef, and then allowing it to be blown up by your favorite dev.

License and Author
==================

Author:: Wil Schultz

Copyright 2012

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

