
Frag
====

Frag is a fluid, responsive, friendly, simple grid system for
CSS written in LESS.


Browser Support
---------------

Frag has been tested so far in Firefox 12, Chrome, Safari 5.1,
Internet Explorer 6–9, Mobile Safari (iPhone and iPad).


Installing
----------

You can use Frag in your project by installing it through
[Bower][bower] with `bower install frag` (or by adding it as a
project dependency).

You can also use frag without a package manager just by
including `build/frag.css` in your code. If you already use
LESS for your project or site then you can `@import`
`lib/frag.less` directly. This allows you to customize the grid
spacing and break-points.


Using Frag
----------

Using the grid system is just a case of adding classes to your
markup. The best way to learn this is by studying
`test/frag.html`. This file uses all of the features of frag.

### Grid ###

All frag columns must be surrounded by an element with a class of
`grid`:

    <div class="grid"> <!-- columns --> </div>

### Columns ###

To create columns, simple add classes of `col-<n>` to your
elements, where `<n>` is the number of columns (up to 12) that
you wish the element to span.

    <div class="grid">
        <div class="col-6"> <!-- content --> </div>
        <div class="col-6"> <!-- content --> </div>
    </div>

### Clearing ###

When a grid spans multiple rows, you'll need to clear columns in
order to prevent strange display issues. You need to add a class
of `col-clear` to the first element in each row (ignoring the
first row as it has nothing to clear).

    <div class="grid">
        <div class="col-6">           <!-- content --> </div>
        <div class="col-6">           <!-- content --> </div>
        <div class="col-6 col-clear"> <!-- content --> </div>
        <div class="col-6">           <!-- content --> </div>
    </div>

If you're one of the unlucky ones who need to support Internet
Explorer 6 and/or 7, then you need to add some extra markup to
prevent inequal column heights from breaking the layout. It
sucks, I know.

    <div class="grid">
        <div class="col-6">           <!-- content --> </div>
        <div class="col-6">           <!-- content --> </div>
        <br class="ie-clear"/>
        <div class="col-6 col-clear"> <!-- content --> </div>
        <div class="col-6">           <!-- content --> </div>
    </div>

### Going Responsive ###

Frag supports multiple break-points, and you are able to specify
column widths for tablet and mobile. To do this, supplement your
regular `col-<n>` class with `col-<break>-<n>` where `<break>` is
either "tablet" or "mobile". The example below will make all
columns display at full width on mobile.

    <div class="grid">
        <div class="col-6 col-mobile-12">           <!-- content --> </div>
        <div class="col-6 col-mobile-12">           <!-- content --> </div>
        <div class="col-6 col-mobile-12 col-clear"> <!-- content --> </div>
        <div class="col-6 col-mobile-12">           <!-- content --> </div>
    </div>

The mobile and tablet break-points also have their own clear
classes – `col-tablet-clear` and `col-mobile-clear`. These allow
you to use very different layouts for different devices.

The tablet and mobile break-points make some changes to the base
grid without you having to specify anything. The tablet
break-point doubles the width of `col-<1–3>`, and sets all other
column sizes to 12. The mobile break-point sets everything to 12
by default.

### Nesting ###

If you need to nest grids (you probably will) then that's fine,
it works exactly as you'd expect it to. The only catch here is
that nested grids work differently in IE 6+7 – all nested grid
columns become full-width columns.

Just in case it's not clear, here's the markup:

    <div class="grid">
        <div class="col-6">
            <div class="grid">
                <div class="col-3"> <!-- content --> </div>
                <div class="col-3"> <!-- content --> </div>
                <div class="col-3"> <!-- content --> </div>
                <div class="col-3"> <!-- content --> </div>
            </div>
        </div>
        <div class="col-6">
            <!-- content -->
        </div>
    </div>

Columns which contain nested grids will retain their gutter by
default. It's possible to remove the gutter on a column by using the `col-gutterless` class:

    <div class="grid">
        <div class="col-6 col-gutterless">
            <div class="grid">
                <div class="col-6"> <!-- content --> </div>
                <div class="col-6"> <!-- content --> </div>
            </div>
        </div>
        <div class="col-6">
            <!-- content -->
        </div>
    </div>

Gutter removal will not work in Internet Explorer 6 and 7; these
browsers gracefully fall back to columns with gutters.

### Hiding ###

Frag allows you to hide certain columns based on the current
device. This can be useful if a particular column is not valuable
for mobile or tablet users, e.g. Advertisements or content that
would not be useful in a mobile context.

To use this feature, use the `col-hide`, `col-tablet-hide` and
`col-mobile-hide` classes:

    <div class="grid">
        <div class="col-12">
            Visible at all screen sizes
        </div>
        <div class="col-12 col-tablet-hide col-mobile-hide">
            Visible at desktop size only
        </div>
        <div class="col-12 col-hide col-mobile-hide">
            Visible at tablet size only
        </div>
        <div class="col-12 col-hide col-tablet-hide">
            Visible at mobile size only
        </div>
        <div class="col-12 col-mobile-hide">
            Visible at desktop and tablet sizes only
        </div>
        <div class="col-12 col-hide">
            Visible at tablet and mobile sizes only
        </div>
    </div>


Building Frag
-------------

In order to compile the Frag LESS source into CSS you'll need to
install [Node.js][node], [npm][npm] and the LESS command line
utility:

    npm install -g less

Then you can run the following from within the project directory
to compile the CSS:

    lessc lib/frag.less > build/frag.css


License
-------

Copyright 2012, Rowan Manning  
Dual licensed under the [MIT][mit] or [GPL Version 2][gpl2]
licenses.


[bower]: http://twitter.github.com/bower/
[node]: http://nodejs.org/
[npm]: http://npmjs.org/
[gpl2]: http://opensource.org/licenses/gpl-2.0.php
[mit]: http://opensource.org/licenses/mit-license.php
