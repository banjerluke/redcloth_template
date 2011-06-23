# redcloth_template

## Description

This plugin registers template handler for `*.textile` files, which will
be run through ERB and RedCloth in that order, enabling
you to use Textile syntax directly in your views.

Markdown support was removed by me (banjerluke) because of some bug that I couldn't trace, but
I only wanted Textile support anyway.

Tests have not been updated to Rails 3. Shame on me, I know. :-)

## Requirements

* Rails 3.0 (earlier version was 2.2+ compatible, this version has not been tested)
* RedCloth (>= 4.0.0)

## License

The redcloth_template plugin is released under the MIT license.

## Authors

* Markus Koller <toupeira at gmx dot ch>
  http://snafu.diarrhea.ch
  22 December 2006
* Paul Battley <pbattley@gmail.com>
  http://po-ru.com/
  17 August 2009
* Luke Abbott - banjerluke (at) gmail
  http://github.com/banjerluke/
  22 June 2011
