# Raspberry Pi Talk Outline

### Introduction

* Introduce the speakers
* Introduce the helpers
* Introduce the Raspberry Pi!


### Download

[Raspberry Pi Downloads](http://www.raspberrypi.org/downloads)

		sudo apt-get install rtorrent

		diskutil list

> /dev/disk0
>    #:                       TYPE NAME                    SIZE       IDENTIFIER
>    0:      GUID_partition_scheme                        *750.2 GB   disk0
>    1:                        EFI                         209.7 MB   disk0s1
>    2:                  Apple_HFS Macintosh HD            749.3 GB   disk0s2
>    3:                 Apple_Boot Recovery HD             650.0 MB   disk0s3
> /dev/disk1
>    #:                       TYPE NAME                    SIZE       IDENTIFIER
>    0:     Apple_partition_scheme                        *17.4 MB    disk1
>    1:        Apple_partition_map                         32.3 KB    disk1s1
>    2:                  Apple_HFS Flash Player            17.4 MB    disk1s2
> /dev/disk2
>    #:                       TYPE NAME                    SIZE       IDENTIFIER
>    0:     FDisk_partition_scheme                        *16.1 GB    disk2
>    1:             Windows_FAT_32                         58.7 MB    disk2s1
>    2:                      Linux                         2.5 GB     disk2s2

		diskutil umountdisk /dev/disk1
		sudo if=2013-02-09-wheezy-raspbian.img of=/dev/rdisk1 bs=1m
		dd if=2013-02-09-wheezy-raspbian.img bs=1m | pv -s 1800m | sudo dd of=/dev/rdisk2 bs=1m

		sudo apt-get install