favicon-cheat-sheet
===================

A painfully obsessive cheat sheet to favicon sizes/types. Compiled from:

* http://www.jonathantneal.com/blog/understand-the-favicon/
* http://snook.ca/archives/design/making_a_good_favicon
* http://www.netmagazine.com/features/create-perfect-favicon
* http://mathiasbynens.be/notes/touch-icons
* http://www.ravelrumba.com/blog/android-apple-touch-icon/
* http://msdn.microsoft.com/en-us/library/ie/gg491740(v=vs.85).aspx

The HTML
--------

Basics
~~~~~~

Insert into `<head>`:

    .. code-block:: html

        <link rel="icon" href="path/to/favicon.png">
        <!--[if IE]><link rel="shortcut icon" href="path/to/favicon.ico"><![endif]-->
        <!-- or, set /favicon.ico for IE10 win -->

Optional
~~~~~~~~

You probably also want the following: 

1. Touch icon for iOS 2.0+ and Android 2.1+ (really):

    .. code-block:: html

        <link rel="apple-touch-icon-precomposed" href="path/to/favicon-152.png">

   Note: Don't use non-precomposed. If you do use
   `<link rel="apple-touch-icon" href="path/to/favicon-152.png">` instead, iOS
   will add rounded corners, drop shadow, and reflective shine. But you/your
   designer will be frustrated with the default results, and the icon will
   only work on Android 2.2+.

If you're obsessive, you want all this too:

2. Favicons targeted to specific sizes (TODO: fix this to match the below sizes):

    .. code-block:: html

        <link rel="icon" href="path/to/favicon-16.png" sizes="16x16">
        <link rel="icon" href="path/to/favicon-32.png" sizes="32x32">
        <link rel="icon" href="path/to/favicon-48.png" sizes="48x48">
        <link rel="icon" href="path/to/favicon-64.png" sizes="64x64">
        <link rel="icon" href="path/to/favicon-128.png" sizes="128x128">

3. Largest to smallest apple-touch-icons:

    .. code-block:: html

        <!-- For iPad with high-resolution Retina display running iOS ≥ 7: -->
        <link rel="apple-touch-icon-precomposed" sizes="152x152" href="path/to/favicon-152.png">

        <!-- For iPad with high-resolution Retina display running iOS ≤ 6: -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="path/to/favicon-144.png">

        <!-- For iPhone with high-resolution Retina display running iOS ≥ 7: -->
        <link rel="apple-touch-icon-precomposed" sizes="120x120" href="path/to/favicon-120.png">

        <!-- For iPhone with high-resolution Retina display running iOS ≤ 6: -->
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="path/to/favicon-114.png">

        <!-- For first- and second-generation iPad: -->
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="path/to/favicon-72.png">

        <!-- For non-Retina iPhone, iPod Touch, and Android 2.1+ devices: -->
        <link rel="apple-touch-icon-precomposed" href="path/to/favicon-57.png">

4. IE 10 Metro tile icon so that the page can be pinned to Windows users' Start screen:

    .. code-block:: html

        <meta name="msapplication-TileColor" content="#D83434">
        <meta name="msapplication-TileImage" content="path/to/favicon-144.png">

The Images
----------

Create at least this:

======== =============== =======================================================================
Size     Name            Purpose
======== =============== =======================================================================
multiple favicon.ico     New tab page in IE, taskbar button in Win 7+, Safari Read Later sidebar
======== =============== =======================================================================

See below. Yes, it's 1 file with multiple sizes.

If you also sort of care about iOS and Android but are lazy:

======= =============== =======================================================================
Size    Name            Purpose
======= =============== =======================================================================
152x152 favicon-152.png General use iOS/Android icon, auto-downscaled by devices.
======= =============== =======================================================================

But keep in mind that icons with complex detail often don't downscale well.
Often you have to tweak subtle design details for smaller sizes.

If you're obsessive, create these too:

======= =============== =======================================================================
Size    Name            Purpose
======= =============== =======================================================================
57x57   favicon-57.png  Standard iOS home screen (iPod Touch, iPhone first generation to 3G)
72x72   favicon-72.png  iPad home screen icon
96x96   favicon-96.png  GoogleTV favicon
120x120 favicon-120.png iPhone retina touch icon (Change for iOS 7: up from 114x114)
128x128 favicon-128.png Chrome Web Store icon
144x144 favicon-144.png IE10 Metro tile for pinned site
152x152 favicon-152.png iPad retina touch icon (Change for iOS 7: up from 144x144)
195x195 favicon-195.png Opera Speed Dial icon
======= =============== =======================================================================

ICO File
--------

An .ico file contains an icon at multiple sizes. In favicon.ico, create these:

======= =======================================================================
Size    Purpose
======= =======================================================================
16x16   IE9 address bar, Pinned site Jump List/Toolbar/Overlay
32x32   New tab page in IE, taskbar button in Win 7+, Safari Read Later sidebar
======= =======================================================================

How?
~~~~

* The easiest way to do this at the command line is...TODO (ImageMagick?)
* GIMP or Photoshop work too.

If you're obsessive, also include these sizes in your .ico:

======= =======================================================================
Size    Purpose
======= =======================================================================
48x48   Windows site icons (no specifics given by MSDN)
64x64   Windows site icons (no specifics given by MSDN)
======= =======================================================================


Helpful Tools
-------------

I haven't tried them all, so use at your own risk.

* MSDN recommends this web-based .ico creator: http://www.xiconeditor.com
* Resize favicons: http://faviconer.com
* More resizing: https://github.com/abrkn/icon
* Creating .ico files: http://www.imagemagick.org/Usage/thumbnails/#favicon
* Dynamically setting favicons: https://github.com/HenrikJoreteg/favicon-setter
* Fancy favicon tricks: https://github.com/component/piecon

Contribute!
-----------

Send me pull requests if you have anything to add/change.
