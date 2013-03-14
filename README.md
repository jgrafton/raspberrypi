raspberry pi talk and demo
==========================

#### Presented by John Grafton and Markus 

introduction
------------
The Raspberry Pi began as a project to mimic the effect Acorn's BBC Micro had on children in the early 1980's.  The goal of the project was to create a computer that could be used as a teaching tool to impart the vagaries of computer programming to kids. 

Acorn originally developed the ARM processor and the RISC OS. 


raspberry pi hardware (model b)
-------------------------------
* SoC: Broadcom BCM2835 (CPU, GPU, DSP, SDRAM, and single USB port)
* CPU: 700 MHz ARM1176JZF-S core (ARM11 family)
* GPU: Broadcom VideoCore IV
* Memory: 512 MB (shared with GPU)
* USB 2.0: 2 (via the built in integrated 3-port USB hub)
* Video 1: Composite RCA (PAL and NTSC)
* Video 2: HDMI (rev 1.3 and 1.4)
* Video 3: Raw LCD Panels via DSI (Display Serial Interface)
* Audio 1: 3.5 mm jack
* Audio 2: HDMI
* Storage: SD / MMC / SDIO card slot
* Network: 10/100 Ethernet 
* Bus 1: UART
* Bus 2: I2C
* Bus 3: SPI
* Power rating: 700mA (3.5W)
* Power source: 5 volt via MicroUSB or GPIO header


where you can buy a raspberry pi
--------------------------------
* [MCM Electronics](http://www.mcmelectronics.com/content/en-US/raspberry-pi)
* [Element 14](http://www.farnell.com/)
* [RS Components](http://uk.rs-online.com/web/generalDisplay.html?id=raspberrypi)

I bought my RPi's from MCM Electronics and had a very good experience.  They shipped to California within a few days and my RPi's were in good shape.  They ship from Dayton, Ohio.

what hardware you need to get started
-------------------------------------
* a computer with an ethernet card and SD card writer
* SD card 2GB or greater
* (optional) a screen with an HDMI input
* (optional) a USB keyboard
* (optional) a USB mouse
* (optional) a USB hub


how to install raspbian linux
-----------------------------
### Download the Raspbian Image (link below)
#### Linux
	sudo apt-get install rtorrent
	rtorrent ./2013-02-09-wheezy-raspbian.zip.torrent

#### OSX
Download the file using either bittorrent or a direct download from the site. [[1]](http://www.raspberrypi.org/downloads)

### Write the image
#### OSX
Find SD card and unmount it.
	diskutil list
	diskutil umountdisk /dev/disk1

Write the image to the SD card.  WARNING, this will destroy all data on the disk!

Normal (dull)

    sudo if=2013-02-09-wheezy-raspbian.img of=/dev/rdisk1 bs=1m

Awesome (w/ progress meter) [[6]](http://www.ivarch.com/programs/pv.shtml)

    dd if=2013-02-09-wheezy-raspbian.img bs=1m | pv -s 1800m | sudo dd of=/dev/rdisk2 bs=1m


#### Linux
    sudo if=2013-02-09-wheezy-raspbian.img of=/dev/sdb bs=1m

### Boot the Raspberry Pi




what to do with it once linux is installed and setup
----------------------------------------------------
* robots!
* learn to program!
* make an LED blink!
* learn to solder

how to use raspberry pi as a media center running xbox media center
-------------------------------------------------------------------


raspberry pi links
------------------
* [1] [Raspberry Pi Downloads](http://www.raspberrypi.org/downloads)
* [2] [Raspbian Linux](http://www.raspbian.org/)
* [3] [Raspberry Pi Wiki Entry](http://en.wikipedia.org/wiki/Raspberry_Pi)
* [4] [Raspberry Pi FAQs](http://www.raspberrypi.org/faqs)
* [5] [How Two Volunteers Built the Raspberry Pi Operating System](http://arstechnica.com/information-technology/2013/03/how-two-volunteers-built-the-raspberry-pis-operating-system/)
* [6] [Pipe Viewer](http://www.ivarch.com/programs/pv.shtml)

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
