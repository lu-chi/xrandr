#### Changing the xrandr params
-----------


* check the params for requested resolution
		$ cvt 1024 768

	Sample output

		1024×768 59.92 Hz (CVT 0.79M3) hsync: 47.82 kHz; pclk: 63.50 MHz
		Modeline "1024x768_60.00" 63.50 1024 1072 1176 1328 768 771 775 798 -hsync +vsync

* Check existing xrandr settings
		$ xrandr

* Create a modeline
		$ xrandr --newmode <Modeline>

* Create a new modeline with the output details
		$ xrandr --newmode "1024x768_60.00"   63.50  1024 1072 1176 1328  768 771 775 798 -hsync +vsync

* Now you need to add the above mode using the following command
		$ xrandr --addmode VGA1 1024x768_60.00

* here for VGA1 you have to use what ever that was there for $ xrandr output
		$ xrandr --output VGA1 --mode 1024x768_60.00

* Create a script, add the lines below to yout path or run form your commandline

		$ xrandr --newmode "1024×768" 70.00 1024 1072 1176 1328 768 771 775 798 -hsync +vsync
		$ xrandr --addmode VGA1 1024x768_60.00
		$ xrandr --output VGA1 --mode 1024×768

