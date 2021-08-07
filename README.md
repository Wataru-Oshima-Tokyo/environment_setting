# environment_setting
	$ sudo addgroup <username> dialout
	$ sudo usermod -a -G dialout <username>
	$ sudo ls /dev/ttyU*
	上記で表示された名前で下記以降を置き換えてコマンドをたたく。
	$ sudo chmod 666 /dev/ttyUSB<nnn>
	$ cd /etc/udev/rules.d
	$ sudo touch ttyUSB<nnn>rule.rules
	$ sudo nano ttyUSB<nnn>rule.rules

	KERNEL=="ttyUSBnnn", MODE="0666"

