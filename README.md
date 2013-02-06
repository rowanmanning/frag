
Frag (2.x Alpha)
================

Frag is a fluid, responsive, friendly, simple grid system for CSS written in Sass.

Note: If you're looking for Frag 1.x, it's [available here][1x].


Installing
----------

You can use Frag in your project by installing it through [Component][component] with `component install rowanmanning/frag` (or by adding it as a project dependency).

You can also use frag without a package manager just by including `build/<grid>/frag-<grid>.css` in your code. If you already use Sass for your project or site then you can `@import` the Sass source files directly – this allows you to customize the grid spacing and break-points.


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
Dual licensed under the [MIT][mit] license.



[1x]: https://github.com/rowanmanning/frag/tree/1.x
[component]: https://github.com/component/component
[make]: http://gnuwin32.sourceforge.net/packages/make.htm
[mit]: http://opensource.org/licenses/mit-license.php
[sass]: http://sass-lang.com/download.html
