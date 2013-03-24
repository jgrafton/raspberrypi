raspberry pi talk and demo
==========================

#### Presented by John Grafton and Markus 

<pre>

Linux raspberrypi 3.6.11+ #371 PREEMPT Thu Feb 7 16:31:35 GMT 2013 armv6l


     :||220$00$$211'        '112$$00$0221|:           
  '00802$22112122$$802'   1080$22211122$2$800:        
  |&0111111111111111108::881111111111111111$&1        
  :&8111111122111111110888111111112221111110&;        
   1&$111111112$$211112&&$11112$$2111111112&2         
    2&$1111111111200228&&&$2$0$111111111128$          
     18821111111111$&&&&&&&&811111111112081           
      '108$21111120&&&&&&&&&&021111122801:            
        '$&&8$$$8&&8$11||11$8&&80008&&$:              
       28$1;:'';0&1:' '''' ':181:::;12882'            
     :88;'  ';2&&8;' ''''''  :8&$|'   :2&8:           
     $&;  :1$&&&&&&021||||112088&&01:' '$&0           
     &8;|28&821;::;12&&&&&81;::::;108$1:1&&:          
   ;0&8&&&&1: '''''' ;0&&0: '''''' '|8&&88&0|         
 '081;:$&&1 ''''''''' 1&&1 ''''''''' ;8&|';$&0:       
 88; ' 1&$''''''''''' 1&&2 '''''''''' 28:'''1&8:      
1&1 '' 2&0'''''''''' ;8&&&1'''''''''''0&:''''8&2      
1&1 '':8&&2: '''' ':1&&&&&&$|''    ':2&&1 '':8&2      
'88;  2&&&&821||11$0$1|;;;1208$1112$&&&&&; '2&&:      
 :0822&0008&&&&&&&2:' ''''' '|8&&&&&821|1020&0:       
   8&&1''':|$&&&&2 '''''''''' ;&&&0|: '' |&&8'        
   ;&8:'''''';$&&1 ''''''''''':8&1''''''':8&|         
    $&1 '''''''2&8; '''''''' '2&| '''''' |&0          
    '0&1''''''':8&&2;:'''':;10&$ '''''''|88:          
      2&$1:'''';8&&&&&00008&&&&$'  '':|$&2'           
       '1$00$$$8&&0211||||112$8&02220001:             
           |28&&&2'   '''''   2&&&8$|                 
              :128$1;''''':;10&21:                    
                 '1$00$$$$08$1'                       
                     ':;;:'

HOSTNAME : raspberrypi
DOMAIN   : hsd1.ca.comcast.net.
OS       : Debian 7.0
KERNEL   : Linux 3.6.11+ version 3.6.11+
# PROCS  : 1
RAM      : 184.45 MB
MAC      : b8:27:eb:df:3a:f8
IP       : 192.168.1.64
VIRTUAL  : physical
Last login: Sun Mar 24 03:05:36 2013 from pod.tino
jgrafton@raspberrypi ~ $

</pre>

introduction
------------
Raspberry Pi was a project born of the minds of Eben Upton and David Braben, a man perhaps best known for his creation with Ian Bell of the classic BBC model B space adventure Elite, Raspberry Pi has a simple premise: “It’s a project to make a very cheap computer,” Upton explained. “A  computer for $25 without networking – the Model A-  or $35 with – the Model B.” [[8]](http://www.linuxuser.co.uk/features/raspberry-pi-interview-eban-upton-reveals-all)

The Raspberry Pi began life as a project to teach children computer programming while not being distracted by Facebook and Twitter.

The ARM architecture along with RISC OS were originally developed by Acorn Computers Ltd. to power their desktop machines in the 1980's.  The BBC Micro model B is considered their most popular.  ARM was spun off as a separate company to develop the processors further.  ARM does not manufacture their own processors.  They license their architecture to other semi-conductor manufacturers.


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
* ethernet cable
* 5v micro USB power adapter that can provide at least 1A of power
* (optional) a screen with an HDMI input
* (optional) a screen with a composite
* (optional) a USB keyboard
* (optional) a USB mouse
* (optional) a USB hub

how to install raspbian linux
-----------------------------
### Download the Raspbian Image [[1]](http://www.raspberrypi.org/downloads)

I've found the quickest way to download the Raspbian image is to pull it down through bittorrent.  Using Bittorrent instead of the direct HTTP link also reduces the amount of load on the Raspberry Pi Foundation's web server.  

There are a few good bittorrent clients around but I'm partial to rtorrent.  It's easy to use and runs on both OSX and Linux.

__Linux rtorrent install__ `$ sudo apt-get install rtorrent`

__OSX rtorrent install__ `$ brew install rtorrent` [[7]](http://mxcl.github.com/homebrew/)

Fire up rtorrent to download the image.

	$ rtorrent ./2013-02-09-wheezy-raspbian.zip.torrent

Once the image is downloaded, unzip it.

    $ unzip 2013-02-09-wheezy-raspbian.zip
    Archive:  2013-02-09-wheezy-raspbian.zip
      inflating: 2013-02-09-wheezy-raspbian.img 

### Write the Image to the SD Card
#### OSX
In OSX, find your SD card in the device list and unmount it.

    diskutil list

    /dev/disk0
       #:                       TYPE NAME                    SIZE       IDENTIFIER
       0:      GUID_partition_scheme                        *750.2 GB   disk0
       1:                        EFI                         209.7 MB   disk0s1
       2:                  Apple_HFS Macintosh HD            749.3 GB   disk0s2
       3:                 Apple_Boot Recovery HD             650.0 MB   disk0s3
    /dev/disk1
       #:                       TYPE NAME                    SIZE       IDENTIFIER
       0:     FDisk_partition_scheme                        *16.1 GB    disk1
       1:             Windows_FAT_32                         58.7 MB    disk1s1
       2:                      Linux                         16.1 GB    disk1s2

In this example, my SD card is named /dev/disk1.  We have to unmount this disk in order to write to it.  _Note_ I didn't say eject.  If you logically eject the SD card, you will not be able to write an image to it.

    diskutil umountdisk /dev/disk1

Write the image to the SD card.  __WARNING__, this will destroy all data on the disk!

__Normal__ 

	$ sudo if=2013-02-09-wheezy-raspbian.img of=/dev/rdisk1 bs=1m

__Awesome__ (w/ progress meter) [[6]](http://www.ivarch.com/programs/pv.shtml) 

	dd if=2013-02-09-wheezy-raspbian.img bs=1m | pv -s 1800m | sudo dd of=/dev/rdisk2 bs=1m


#### Linux
Writing the image using a Linux system is very similiar to OSX.  The only difference is that Linux and OSX device drivers name disk devices differently.  i.e. /dev/rdisk1 vs. /dev/sdb

    sudo if=2013-02-09-wheezy-raspbian.img of=/dev/sdb bs=1m

### Boot the Raspberry Pi
There are two methods to proceed with booting your RPi.


1. Most folks will want to boot the RPi with a monitor and keyboard connected.  This option requires more equipment but is MUCH easier to troubleshoot if something goes horribly wrong.
2. The more experienced among you may feel confident enough in your SD image to boot the RPi headless on a network that has a DHCP server (many home networks have a DHCP server built into their router / wireless access point.)

For obvious reasons, this is the stage where having an external screen is extremely useful.  If there was an error in the image writing process to your SD card an external display will allow you to see the error and debug it.  Otherwise, you're waiting for the RPi to boot and grab an IP address.  It takes a few minutes so it's a bit nerve racking.

### Log into the Raspberry Pi Locally


### Log into the Raspberry Pi Remotely


### Update Raspbian


### raspi-config
__raspi-config__ is used to configure a newly installed Raspberry Pi.  The functions you may find most useful are:

1. expand\_rootfs - expand the root file system to fill your SD card.  For example, if you have 16GB SD card and image it with the Raspbian 2GB image, your root filesystem will only be 2GB in size.  expand\_rootfs will expand it to fill the entire 16GB.
2. change\_pass - change the pi account password
3. update - update raspi-config

You must be root to run 'raspi-config'.

#### expand\_rootfs
This is a great way to lose connection to your Raspberry Pi if you chose to boot it headless.  Many times the root fs expansion fails and you are left with a Raspberry Pi that you can no longer connect remotely to.

programming
-----------

### python

Install python-rpi GPIO module

    sudo apt-get install python-rpi.gpio
    
### scratch
Scratch is automatically installed.  It requires a display to use.


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
* \[1\] [Raspberry Pi Downloads](http://www.raspberrypi.org/downloads)
* \[2\] [Raspbian Linux](http://www.raspbian.org/)
* \[3\] [Raspberry Pi Wiki Entry](http://en.wikipedia.org/wiki/Raspberry_Pi)
* \[4\] [Raspberry Pi FAQs](http://www.raspberrypi.org/faqs)
* \[5\] [How Two Volunteers Built the Raspberry Pi Operating System](http://arstechnica.com/information-technology/2013/03/how-two-volunteers-built-the-raspberry-pis-operating-system/)
* \[6\] [Pipe Viewer](http://www.ivarch.com/programs/pv.shtml)
* \[7\] [Home Brew](http://mxcl.github.com/homebrew/) - Brew is a great bit of software that sprung to life because if you use MacPorts for very long, it will drive you to drink.  HomeBrew is definitely the missing package manager for OSX!  I highly recommend it.
* \[8\] [Raspberry Pi interview: Eben Upton reveals all](http://www.linuxuser.co.uk/features/raspberry-pi-interview-eban-upton-reveals-all)
* \[9\] [Eben Upton Keynote at PyCon](http://www.raspberrypi.org/archives/3508)
* \[10\] [Raspberry Pi Verified Peripherals](http://elinux.org/RPi_VerifiedPeripherals)

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

talk hardware requirements
--------------------------
* grafton Rpi (power, ethernet cable, SD card)
* markus Rpi (power, SD card)
* display
* mini-dv to VGA converter for mac


john grafton bio
----------------
John Grafton is a systems administrator living and working in the South Bay.  He cut his teeth on Sun SPARC systems running Solaris in the late nineties while attending University in Ohio.  Administrating Unix-y systems by day, John enjoys hacking on electronics projects during his off time (accidental burns from his soldering iron occur more frequently than he'll admit to).
