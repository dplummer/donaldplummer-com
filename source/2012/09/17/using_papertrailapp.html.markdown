---
title: Using PapertrailApp
date: 17/09/2012
---

For CentOS 5.5:

Install rsyslog if you don't already have it:

    # yum install rsyslog

Use rsyslog instead of syslog:

1. Add [papertrail to rsyslog
   config](https://papertrailapp.com/systems/setup#0).
2. Stop `syslog` and start `rsyslog`: `/etc/init.d/syslog stop && /etc/init.d/rsyslog start`
3. Configure startups:

    :::bash
    # /sbin/chkconfig syslog off
    # /sbin/chkconfig --level 2345 rsyslog on

SNMPd logging is too verbose: http://serverfault.com/questions/310640/reduce-snmpd-logging-verbosity


