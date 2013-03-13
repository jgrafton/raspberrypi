raspberry pi talk and demo
==========================

#### Pesented by John Grafton and Markus 

introduction
------------
The Raspberry Pi began as a project to mimic the effect Acorn's BBC Micro had on children in the early 1980's.  The goal of the project was to create a computer that could be used as a teaching tool to impart the vagaries of computer programming to kids.  


hardware
--------


#### Links
[Raspberry Pi Wiki Entry](http://en.wikipedia.org/wiki/Raspberry_Pi)


where can you buy a Raspberry Pi?
---------------------------------
* Element 14
* MCM Electronics in Dayton Ohio


what hardware you need to get started?
--------------------------------------
* a computer with an ethernet card and SD card writer
* SD card 2GB or greater
* (optional) a screen with an HDMI input
* (optional) a USB keyboard
* (optional) a USB mouse
* (optional) a USB hub


how to install Raspbian Linux
-----------------------------
### Download the Raspbian Image (link below)
#### Linux
	sudo apt-get install rtorrent
	rtorrent ./2013-02-09-wheezy-raspbian.zip.torrent

#### OSX
	Download the file using either bittorrent or a direct download from the site.  (listed below)

### Write the image
#### OSX
Find SD card and unmount it.
	diskutil list
	diskutil umountdisk /dev/disk1

Write the image to the SD card.  WARNING, this will destroy all data on the disk!

Normal dd
	sudo if=2013-02-09-wheezy-raspbian.img of=/dev/rdisk1 bs=1m

Fancy dd
	dd if=2013-02-09-wheezy-raspbian.img bs=1m | pv -s 1800m | sudo dd of=/dev/rdisk2 bs=1m


#### Linux


#### Links
[Raspberry Pi Downloads](http://www.raspberrypi.org/downloads)
[Raspbian Linux](http://www.raspbian.org/)
[How Two Volunteers Built the Raspberry Pi Operating System](http://arstechnica.com/information-technology/2013/03/how-two-volunteers-built-the-raspberry-pis-operating-system/)


what to do with it once Linux is installed?
-------------------------------------------
* robots!
* learn to program!
* make an LED blink!
* learn to solder

how to use RPi as a media center running XBMC
---------------------------------------------




xbox media center
-----------------


raspberry pi links
------------------
[RPi FAQs](http://www.raspberrypi.org/faqs)


about the code repository
-------------------------
* _src_ - source code used in the presentation
* _doc_ - documents with information on the Raspberry Pi
* _pic_ - pictures and screen shots associated to the talk


about the talk
--------------
News of the Raspberry Pi took the geek world by storm in late 2011.   Surprisingly, a $35 ARM based computer capable of running a full blown version of Linux caught the attention of ordinary folks and computer insiders alike.  So many people wanted to get their hands on one, order wait times measured in months shortly after the initial release.  During the first year of its existence, the Raspberry Pi Foundation estimates they sold nearly half a million of the little computers.  Thankfully, Raspberry Pi's are now easy to come by and the internet is full of people doing interesting things with them.

This talk will cover the Raspberry Pi's short history and briefly touch on the educational genesis of this fascinating device.  Then we'll move on to the good stuff:

* Where can you buy an RPi?
* What hardware you need to get started?
* How to install Raspbian Linux.
* What to do with it once Linux is installed.
* How to use RPi as a media center running XBMC.

We will also *attempt* to demo many of the things we talk about.

john grafton bio
----------------
John Grafton is a systems administrator living and working in the South Bay.  He cut his teeth on Sun SPARC systems running Solaris in the late nineties while attending University in Ohio.  Administrating Unix-y systems by day, John enjoys hacking on electronics projects during his off time (accidental burns from his soldering iron occur more frequently than he'll admit to).