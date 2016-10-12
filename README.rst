Use-cases
========

- have all mail available offline, two-way sync
- support for multiple mail accounts

Setup
=====

- offlineimap for fetching mail from remote IMAP
- mutt as MUA (Mail User Agent)
- notmuch for indexing and searching local mailbox

Optional for extended functionality:

- GPG (for mail signing/encryption)
- khal (calendar client)
- vdirsyncer (calendar syncing tool)
- lbdb (collect contacts from mails)

Installation
============

Replace placeholders

::

    git grep -e '<password>' -e <gpgid>

Copy to proper locations

::

    cp -r configs/mutt ~/.mutt
    cp -r configs/offlineimaprc ~/.offlineimaprc
    cp -r configs/lbdbrc ~/.lbdbrc

Edit ``~/.mutt/mailcap`` to run your favorite applications.
