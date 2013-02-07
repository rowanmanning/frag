
Frag (2.x Beta)
===============

Frag is a fluid, responsive, mobile-first, simple grid system for CSS written in Sass. [Read the documentation here][docs].

**Current Version:** *2.0.0-beta*  
**Full Support (testing in progress):** *Android Browser 2.2–4.2, Firefox 3.6, Firefox 4–16, Google Chrome 14–23, Internet Explorer 9–10, Mobile Safari iOS 4–6, Opera 12.10, Safari 5–6*  
**Degraded Support\*:** *Internet Explorer 6–8*

*\* IE 6–8 always see the mobile view; IE 6–7 loses functionality but is still presented acceptably*

*Note: If you're looking for Frag 1.x, it's [available here][1x].*


Installing
----------

You can use Frag in your project by installing it through [Component][component] with `component install rowanmanning/frag` (or by adding it as a project dependency).

You can also use frag without a package manager just by including `build/<grid>/frag-<grid>.css` in your code. If you already use Sass for your project or site then you can `@import` the Sass source files directly – this allows you to customize the grid spacing and break-points.


Documentation
-------------

Read the full documentation and see examples on the [Frag website][docs].


Development
-----------

In order to build CSS from the Frag source files, you'll need to install the [Sass command line utility][sass]. If you're on Windows, you'll need to install [Make][make].

Once you're set up, you can run the following commands:

```sh
$ make compile # compile Sass source to CSS
$ make minify # compile Sass source to CSS and minify
```

The `compile` and `minify` targets accept a grid argument, which allows you to specify which grid to compile. This argument should be set to the name of a subfolder in `/grid`:

```sh
$ make compile # compile grid/default/grid.scss
$ make compile grid=legacy # compile grid/legacy/grid.scss
```

When no build target is specified, make will run minify and compile. This means you can use the following commands for brevity:

```sh
$ make
$ make grid=legacy
```


License
-------

Copyright 2013, Rowan Manning  
Licensed under the [MIT][mit] license.


[docs]: http://frag.rowanmanning.co.uk/
[1x]: https://github.com/rowanmanning/frag/tree/1.x
[component]: https://github.com/component/component
[make]: http://gnuwin32.sourceforge.net/packages/make.htm
[mit]: http://opensource.org/licenses/mit-license.php
[sass]: http://sass-lang.com/download.html
