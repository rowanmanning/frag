
Frag
====

Frag is a fluid, responsive, friendly, simple grid system for CSS written in Sass.


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



[make]: http://gnuwin32.sourceforge.net/packages/make.htm
[mit]: http://opensource.org/licenses/mit-license.php
[sass]: http://sass-lang.com/download.html
