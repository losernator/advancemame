NAME
	video - Video control

SYNOPSYS
	:video [/l PCXIMAGE] [/s MODE] [/e] [/d] [/r]

DESCRIPTION
	The `video' utility can be used to control the video
	output of the PC in the early boot stage.

OPTIONS
	/l IMAGE
		Load a PCX image. The image must be a PCX image
		in the 320x200 8bit format. The image is displayed using
		the standard VGA 320x200 256 color video mode number 13h.

	/s MODE
		Set an arbitrary video mode. The MODE is expressed as
		an hexadecimal number.

		The most common modes are:
			1 - text mode 40x25 16 color
			3 - text mode 80x25 16 color
			13 - graphics mode 320x200 256 color

	/d
		Disable the hardware video signal using the standard
		VGA registers.

	/e
		Reenable the video signal.

	/r
		Reset the video board using the BIOS startup
		function.

EXAMPLE
	A good configuration for Arcade monitors/TVs may be:

	(in config.sys)
		:device=c:\cab\video.exe /l c:\cab\video.pcx
		:device=c:\cab\vga.exe /l /d /c c:\cab\vga.rc
		:...other commands...

	(in autoexec.bat)
		:...other commands...
		:c:\cab\vga /e
		:...final application...

COPYRIGHT
	This file is Copyright (C) 2002 Andrea Mazzoleni.

