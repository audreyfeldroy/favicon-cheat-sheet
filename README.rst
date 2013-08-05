favicon-cheat-sheet
===================

A painfully obsessive cheat sheet to favicon sizes/types. Compiled from:

* http://www.jonathantneal.com/blog/understand-the-favicon/
* http://snook.ca/archives/design/making_a_good_favicon
* http://www.netmagazine.com/features/create-perfect-favicon

The HTML
--------

Insert into `<head>`::

    <link rel="apple-touch-icon" href="path/to/touchicon.png">
    <link rel="icon" href="path/to/favicon.png">
    <!--[if IE]><link rel="shortcut icon" href="path/to/favicon.ico"><![endif]-->
    <!-- or, set /favicon.ico for IE10 win -->

To add an IE 10 Metro tile icon (for pinning to Start screen)::

    <meta name="msapplication-TileColor" content="#D83434">
    <meta name="msapplication-TileImage" content="path/to/tileicon.png">

The Images
----------

Create at least these:

======= ========== =======================================================================
Size    Type       Purpose
======= ========== =======================================================================
16x16   .png       
32x32   .png       New tab page in IE, taskbar button in Win 7+, Safari Read Later sidebar
various .ico       
======= ========== =======================================================================


If you're obsessive, create these too:

======= ========== =======================================================================
Size    Type       Purpose
======= ========== =======================================================================
24x24   .png       IE 9 pinned site
32x32   .png       New tab page in IE, taskbar button in Win 7+, Safari Read Later sidebar
57x57   .png       Standard iOS home screen (iPod Touch, iPhone first generation to 3G)
72x72   .png       iPad home screen icon
96x96   .png       GoogleTV favicon
114x114 .png       iPhone 4+ touch icon
144x144 .png       IE10 Metro tile for pinned site, iPad retina touch icon
128px   .png       Chrome Web Store icon
195x195 .png       Opera Speed Dial icon
======= ========== =======================================================================

ICO File
--------

An .ico file contains an icon at multiple sizes. In your .ico, create these:

======= =======================================================================
Size    Purpose
======= =======================================================================
16x16   
32x32   New tab page in IE, taskbar button in Win 7+, Safari Read Later sidebar
======= =======================================================================

The easiest way to do this at the command line is...TODO (ImageMagick?)

Helpful Tools
-------------

I haven't tried them all, so use at your own risk.

Basics
~~~~~~

Tools that resize favicons:

* http://faviconer.com
* https://github.com/abrkn/icon

Creating .ico files:

* http://www.imagemagick.org/Usage/thumbnails/#favicon

Fancy
~~~~~

Tools for dynamically setting favicons:

* https://github.com/HenrikJoreteg/favicon-setter

Fancy favicon tricks:

* https://github.com/component/piecon

Contribute!
-----------

Send me pull requests if you have anything to add/change.
