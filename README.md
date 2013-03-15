
Frag (2.x Beta)
===============

Frag is a fluid, responsive, simple grid system for CSS written in Sass. [Read the documentation here][docs].

**Current Version:** *2.0.0-beta.2*  
**Full Support (testing in progress):** *Android Browser 2.2–4.2, Firefox 3.6, Firefox 4–16, Google Chrome 14–23, Internet Explorer 8–10, Mobile Safari iOS 4–6, Opera 12.10, Safari 5–6*  
**Degraded Support\*:** *Internet Explorer 6–7 (fixed width grid and lose a little functionality, but content is still presentable)*

*Note: If you're looking for Frag 1.x, it's [available here][1x].*


Installing
----------

You can use Frag in your project by installing it through [Component][component] with `component install rowanmanning/frag` (or by adding it as a project dependency).

You can also use frag without a package manager just by including `build/frag.css` in your code. If you already use Sass for your project or site then you can `@import` the Sass source files directly – this allows you to customize the grid spacing and break-points.


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

When no build target is specified, make will run minify and compile. This means you can use the following command for brevity:

```sh
$ make
```


License
-------

Copyright 2013, Rowan Manning  
Licensed under the [MIT][mit] license.


[docs]: http://frag.rowanmanning.com/
[1x]: https://github.com/rowanmanning/frag/tree/1.x
[component]: https://github.com/component/component
[make]: http://gnuwin32.sourceforge.net/packages/make.htm
[mit]: http://opensource.org/licenses/mit-license.php
[sass]: http://sass-lang.com/download.html
