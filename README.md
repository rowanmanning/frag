
Frag
====

Frag is a fluid, responsive, friendly, simple grid system for
CSS written in LESS.


Using Frag
----------

You can use frag in the same way you would use any third-party
CSS, by including it with your code. If you already use LESS for
your project or site then you can `@import` `lib/frag.less`
directly. This allows you to customize the grid spacing and
break-points.

Using the grid system is just a case of adding classes to your
markup. The best way to learn this is by studying
`test/frag.html`. This file uses all of the features of frag.

### Grid ###

All frag columns must be surrounded by an element with a class of
`grid`:

    <div class="grid"><!-- columns --></div>

### Columns ###

To create columns, simple add classes of `col-<n>` to your
elements, where `<n>` is the number of columns (up to 12) that
you wish the element to span.

    <div class="grid">
        <div class="col-6"><!-- content --></div>
        <div class="col-6"><!-- content --></div>
    </div>

### Clearing ###

When a grid spans multiple rows, you'll need to clear columns in
order to prevent strange display issues. You need to add a class
of `col-clear` to the first element in each row (ignoring the
first row as it has nothing to clear).

    <div class="grid">
        <div class="col-6"><!-- content --></div>
        <div class="col-6"><!-- content --></div>
        <div class="col-6 col-clear"><!-- content --></div>
        <div class="col-6"><!-- content --></div>
    </div>

### Going Responsive ###

Frag supports multiple break-points, and you are able to specify
column widths for tablet and mobile. To do this, supplement your
regular `col-<n>` class with `col-<break>-<n>` where `<break>` is
either "tablet" or "mobile". The example below will make all
columns display at full width on mobile.

    <div class="grid">
        <div class="col-6 col-mobile-12"><!-- content --></div>
        <div class="col-6 col-mobile-12"><!-- content --></div>
        <div class="col-6 col-mobile-12 col-clear"><!-- content --></div>
        <div class="col-6 col-mobile-12"><!-- content --></div>
    </div>

The mobile and tablet break-points also have their own clear
classes – `col-tablet-clear` and `col-mobile-clear`. These allow
you to use very different layouts for different devices.

The tablet and mobile break-points make some changes to the base
grid without you having to specify anything. The tablet
break-point doubles the width of `col-<1–3>`, and sets all other
column sizes to 12. The mobule break-point sets everything to 12
by default.


Building Frag
-------------

In order to compile the Frag LESS source into CSS, you'll need to
install the Node.js, npm and the LESS command line utility if you
haven't already:

    npm install -g less

Then you can run the following from within the project directory
to compile the CSS:

    lessc lib/frag.less > build/frag.css


License
-------

Copyright 2012, Rowan Manning  
Dual licensed under the [MIT][mit] or [GPL Version 2][gpl2]
licenses.


[gpl2]: http://opensource.org/licenses/gpl-2.0.php
[less-install]: http://ererer/
[mit]: http://opensource.org/licenses/mit-license.php
