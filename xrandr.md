# Changing the xrandr params to setup the proper screen resolution in VMware/ VirtualBox
$ cvt 1024 768

# Sample output

# 1024×768 59.92 Hz (CVT 0.79M3) hsync: 47.82 kHz; pclk: 63.50 MHz
# Modeline "1024x768_60.00" 63.50 1024 1072 1176 1328 768 771 775 798 -hsync +vsync

# Now you need to create a modeline
$ xrandr --newmode <Modeline>

# copy the modeline of the previous output to the place mode line
$ xrandr --newmode "1024x768_60.00"   63.50  1024 1072 1176 1328  768 771 775 798 -hsync +vsync

# Now you need to add the above mode using the following command
$ xrandr --addmode VGA1 1024x768_60.00

# here for VGA1 you have to use what ever that was there for $ xrandr output
$ xrandr --output VGA1 --mode 1024x768_60.00

# Running these would change your resolution but this is temporary.these steps were done to make sure that these commands work
# Now we need to make these changes permanent
# Now you need to edit the default file
$ gksudo gedit /etc/gdm/Init/Default
$ sudo vim /etc/xdg/
 
# Look for the following lines
# PATH=/usr/bin:$PATH
# OLD_IFS=$IFS
# and Add the the following lines below them

xrandr --newmode "1024×768" 70.00 1024 1072 1176 1328 768 771 775 798 -hsync +vsync
xrandr --addmode VGA1 1024x768_60.00
xrandr --output VGA1 --mode 1024×768

# Save and exit the file
