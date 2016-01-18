# packer-Uc3mTiw

## Packer template to build a graphical developer box

### Objective

To build a light and faster image to develop java-J2EE applications

### Include

- Based on Ubuntu mini
- Lubuntu core for desktop
- JDK v8
- Eclipse Mars
- Mysql server 5.x
- Mysql Workbench
- Glassfish v4.0
- Mysql-connector-J installed on glassfish
- asadmin tool added to the system path
- Chromium browser
- Leafpad
- File-roller

### Not included

No libreoffice, and any other heavy media software installed.

### Language support

Desktop is in spanish language at boot time.

### Issues

#### Initial language

The initial language is spanish for the desktop. However the principal language for the system is **en_US**, so command line works wrong.
Both issues can be easily repaired. However, even the language is configurated in the packer template, after the image is created does not include the correct language.

#### How to fix

Of course, you can install you preferred language.

Temporaly: open a command line terminal and write: **setxkbmap es** (or whatever you wants).

Permanently: click on the **US** icon on the bottom task bar and install another language.

#### CTRL+Space

CTRL+Space is the default option for changing the keyboard layout and it conflicts with the same shortcut for autocompletion on eclipse.

#### How to fix

Open the keyboard settings and change the shortcut.
