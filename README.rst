Use-cases
========

- have all mail available offline, two-way sync
- support for multiple mail accounts

Setup
=====

- offlineimap for fetching mail from remote IMAP
- mutt as MUA (Mail User Agent)
- notmuch for indexing and searching local mailbox
- postfix as MTA (for sending email = relaying to proper SMTP server)

Optional for extended functionality:

- GPG (for mail signing/encryption)
- khal (calendar client)
- vdirsyncer (calendar syncing tool)
- lbdb (collect contacts from mails)

Installation
============

MUA
---

Replace placeholders

::

    git grep -e '<password>' -e <gpgid>

Copy to proper locations

::

    cp -r configs/mutt ~/.mutt
    cp -r configs/offlineimaprc ~/.offlineimaprc
    cp -r configs/lbdbrc ~/.lbdbrc

Edit ``~/.mutt/mailcap`` to run your favorite applications.

Postfix
-------

Now a little tricky part, you need to setup some way to send emails. My
favorite approach is to setup local MTA (postfix) and setup it to relay mails
to proper SMTP servers by sender.

::

    apt-get install postfix
    sudo cp -r configs/postfix/* /etc/postfix/
    sudo chmod 600 /etc/postfix/sasl/security

Then edit ``main.cf``, ``generic``, ``relayhost_map``, ``sasl/security``
according to your needs.

Finally create maps:

::

    postmap /etc/postfix/sasl/security
    postmap /etc/postfix/generic
    postmap /etc/sasl/relayhost_map
