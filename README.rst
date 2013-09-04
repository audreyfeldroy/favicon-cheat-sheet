favicon-cheat-sheet
===================

A painfully obsessive cheat sheet to favicon sizes/types. Compiled from:

* http://mathiasbynens.be/notes/rel-shortcut-icon <-- special thanks `@mathiasbynens`_
* http://mathiasbynens.be/notes/touch-icons <-- special thanks `@mathiasbynens`_
* http://www.jonathantneal.com/blog/understand-the-favicon/
* https://en.wikipedia.org/wiki/Favicon.ico
* http://snook.ca/archives/design/making_a_good_favicon
* http://www.netmagazine.com/features/create-perfect-favicon
* http://www.ravelrumba.com/blog/android-apple-touch-icon/
* http://msdn.microsoft.com/en-us/library/ie/gg491740(v=vs.85).aspx

.. _`@mathiasbynens`: https://github.com/mathiasbynens

The HTML
--------

Basics
~~~~~~

For the main favicon itself, it's best for cross-browser compatibility not to
use any HTML. Just name the file `favicon.ico` and place it in the root of your
domain. [1]_ [2]_

This works in every desktop browser/version all the way back to IE6, except for SeaMonkey. [1]_

Optional But Encouraged
~~~~~~~~~~~~~~~~~~~~~~~

You probably also want the following:

1. Touch icon for iOS 2.0+ and Android 2.1+:

    .. code-block:: html

        <link rel="apple-touch-icon-precomposed" href="path/to/favicon-152.png">
   
2. IE 10 Metro tile icon (Metro equivalent of apple-touch-icon):

    .. code-block:: html

        <meta name="msapplication-TileColor" content="#FFFFFF">
        <meta name="msapplication-TileImage" content="/path/to/favicon-144.png">

   Replace #FFFFFF with your desired tile color.

Very Optional, for the Obsessive
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you're obsessive, you want all this too:

1. Largest to smallest apple-touch-icons [3]_:

    .. code-block:: html

        <!-- For iPad with high-resolution Retina display running iOS ≥ 7: -->
        <link rel="apple-touch-icon-precomposed" sizes="152x152" href="/path/to/favicon-152.png">

        <!-- For iPad with high-resolution Retina display running iOS ≤ 6: -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/path/to/favicon-144.png">

        <!-- For iPhone with high-resolution Retina display running iOS ≥ 7: -->
        <link rel="apple-touch-icon-precomposed" sizes="120x120" href="/path/to/favicon-120.png">

        <!-- For iPhone with high-resolution Retina display running iOS ≤ 6: -->
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/path/to/favicon-114.png">

        <!-- For first- and second-generation iPad: -->
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/path/to/favicon-72.png">

        <!-- For non-Retina iPhone, iPod Touch, and Android 2.1+ devices: -->
        <link rel="apple-touch-icon-precomposed" href="/path/to/favicon-57.png">

2. Favicons targeted to any additional png sizes that you add that aren't covered above:

    .. code-block:: html

        <link rel="icon" href="/path/to/favicon-32.png" sizes="32x32">

The Images
----------

Create at least this:

============= =============== =======================================================================
Sizes         Name            Purpose
============= =============== =======================================================================
16x16 & 32x32 favicon.ico     Default required by IE. Chrome and Safari may pick ico over png, sadly.
============= =============== =======================================================================

More about favicon.ico below. Yes, it's 1 file with multiple sizes.

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
32x32   favicon-32.png  Certain old but not too old Chrome versions mishandle ico
57x57   favicon-57.png  Standard iOS home screen (iPod Touch, iPhone first generation to 3G)
72x72   favicon-72.png  iPad home screen icon
96x96   favicon-96.png  GoogleTV icon
120x120 favicon-120.png iPhone retina touch icon (Change for iOS 7: up from 114x114)
128x128 favicon-128.png Chrome Web Store icon
144x144 favicon-144.png IE10 Metro tile for pinned site
152x152 favicon-152.png iPad retina touch icon (Change for iOS 7: up from 144x144)
195x195 favicon-195.png Opera Speed Dial icon
======= =============== =======================================================================

ICO File
--------

An .ico file contains an icon at multiple sizes. In favicon.ico, create at least these:

======= =======================================================================
Size    Purpose
======= =======================================================================
16x16   IE9 address bar, Pinned site Jump List/Toolbar/Overlay
32x32   New tab page in IE, taskbar button in Win 7+, Safari Read Later sidebar
64x64   Windows site icons [4]_, Safari Read Later sidebar in HiDPI/Retina
======= =======================================================================

If you're obsessive and don't mind 1-3kb extra size, also include these sizes
in your .ico:

======= =======================================================================
Size    Purpose
======= =======================================================================
48x48   Windows site icons [4]_
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
* Web Icon - a simple shell script that generates favicon and touch icons: https://github.com/emarref/webicon

Forcing a Favicon Refresh
-------------------------

* For yourself: Clear the browser cache (Ctrl+F5 or Ctrl+Shift+R).

  - Also close and reopen browser if IE.
  - If still stuck, try opening new tab. Or see http://stackoverflow.com/questions/2208933/how-do-i-force-a-favicon-refresh

* For yourself and all site visitors: Append a query string. (TODO: find out if any
  browsers have problems with this.)

    .. code-block:: html

        <link rel="shortcut icon" href="http://www.yoursite.com/favicon.ico?v=2" />
        
* Some proxies and load balancers can fail to read query strings in edge cases. For large versioned deployments, put your version number in the filename. 

    .. code-block:: html

        <link rel="shortcut icon" href="http://www.yoursite.com/favicon-v2.ico" />
FAQ
---

**Why use png in addition to ico?**


**Is it true that favicons should be in the site root?**
No, that's only if you don't explicitly specify the browser/device-specific
`<link>` tags with a favicon path. See https://en.wikipedia.org/wiki/Favicon.ico.

If you don't have favicon.ico in the root consider adding one, or returning a HTTP 204 instead.
Many tools and services e.g. bookmarking sites, feed readers, web crawlers etc., request a 
favicon.ico from the site root, and so recieve a HTTP 404 if it's not present. In the worst 
case some frameworks will return a custom error page which is likely to be many times larger
than the missing favicon.

**Is it true that the png has to be named favicon.png?**
No, this has never been true as far as I can tell from my obsessive research.

**Is it true that the ico has to be named favicon.ico?**
If you don't explicitly specify its `<link>` tag, yes. Explicitness is best,
so we both name it `favicon.ico` and explicitly specify the `<link>` tag.

**Why not prefix with "apple-touch-icon"?**
If you don't specify `<link>` tags, iOS looks for files prefixed with
`apple-touch-icon` or `apple-touch-icon-precomposed`. Many (e.g. HTML5
Boilerplate) rely on this assumption, but:

* Explicitly specifying `<link>` tags is clearer and supported by Apple.
* Not hard-coding names as `apple-touch-icon` clears up confusion as to whether
  the same icons can be reused for other purposes as-is, e.g. reusing
  favicon-144.png for Windows pinned site.

**Why use iOS precomposed icons?**

* iOS non-precomposed icons add rounded corners, drop shadow, and reflective
  shine. Sounds great in theory, but in practice the results can be very
  frustrating, especially to designers.
* Non-precomposed icons don't work with Android 2.1.

**Why absolute paths?**
Some Firefox versions require absolute paths. Since all browsers support them,
it's the simplest choice.

Contribute!
-----------

Send pull requests if you have anything to add/change, providing citations
and justification. I'd love to see this improve.

References
----------

.. [1] http://mathiasbynens.be/notes/rel-shortcut-icon
.. [2] http://www.w3.org/html/wg/drafts/html/CR/links.html#rel-icon
.. [3] Adapted from http://mathiasbynens.be/notes/touch-icons
.. [4] No specifics given by MSDN.
