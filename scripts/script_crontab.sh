#!/bin/bash
if [[ $(find /etc -name "crontab" -mtime 0) ]]; then
	cp /root/scripts/mail_type.txt mail.txt
	diff /root/scripts/new /root/scripts/tmp >> mail.txt
	cat mail.txt | sudo sendmail -v manki@student.42.fr
	rm -f /root/scripts/tmp
	cp /root/scripts/new /root/scripts/tmp
fi

