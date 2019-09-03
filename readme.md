# Overview #

This repo is a Datto RMM Component Monitor for macOS to check how long a machine has gone without a reboot.

## Usage ##

Download and import the CPT file into your Datto RMM instance. Create a new policy targeting macOS (or update an existing one) and add a Component Monitor type monitor. Set the reboot_days to however many days you want to go before throwing an alert.

We recommend only updating the the status every 12 or 24 hours.

Apple and push changes.

You will see the monitor available on device page right away, although it may take some time to show the current uptime.
![devicepage]

[devicepage]: "./device page detail.png"
