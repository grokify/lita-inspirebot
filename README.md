Lita Inspirebot Handler
=======================

[![Gem Version][gem-version-svg]][gem-version-link]
[![Build Status][build-status-svg]][build-status-link]
[![Coverage Status][coverage-status-svg]][coverage-status-link]
[![Dependency Status][dependency-status-svg]][dependency-status-link]
[![Code Climate][codeclimate-status-svg]][codeclimate-status-link]
[![Scrutinizer Code Quality][scrutinizer-status-svg]][scrutinizer-status-link]
[![Downloads][downloads-svg]][downloads-link]
[![Docs][docs-rubydoc-svg]][docs-rubydoc-link]
[![License][license-svg]][license-link]

`lita-inspirebot` is a handler for Lita that replies with a set of inspirational quotes.

## Installation

Add lita-inspirebot to your Lita instance's Gemfile:

``` ruby
gem "lita-inspirebot"
```

## Usage

```
You > quote authors
Lita > I know about the following authors: branson, jobs, tesla. To hear quotes, type QUOTE {AUTHOR}
You > quote jobs!
Lita > My favorite things in life don't cost any money. It's really clear that the most precious resource we all have is time.
```

## Notes

### RingCentral SMSbot Developer Accounts

In addition to standard routes, this handler also supports routes for building [SMSbots using RingCentral](https://github.com/grokify/lita-ringcentral)'s [developer sandbox accounts](https://developers.ringcentral.com).

## License

Inspirebot for Lita is available under an MIT-style license. See [LICENSE.txt](LICENSE.txt) for details.

Inspirebot for Lita &copy; 2016 by [John Wang](https://github.com/grokify)

 [gem-version-svg]: https://badge.fury.io/rb/lita-inspirebot.svg
 [gem-version-link]: http://badge.fury.io/rb/lita-inspirebot
 [downloads-svg]: http://ruby-gem-downloads-badge.herokuapp.com/lita-inspirebot
 [downloads-link]: https://rubygems.org/gems/lita-inspirebot
 [build-status-svg]: https://api.travis-ci.org/grokify/lita-inspirebot.svg?branch=master
 [build-status-link]: https://travis-ci.org/grokify/lita-inspirebot
 [coverage-status-svg]: https://coveralls.io/repos/grokify/lita-inspirebot/badge.svg?branch=master
 [coverage-status-link]: https://coveralls.io/r/grokify/lita-inspirebot?branch=master
 [dependency-status-svg]: https://gemnasium.com/grokify/lita-inspirebot.svg
 [dependency-status-link]: https://gemnasium.com/grokify/lita-inspirebot
 [codeclimate-status-svg]: https://codeclimate.com/github/grokify/lita-inspirebot/badges/gpa.svg
 [codeclimate-status-link]: https://codeclimate.com/github/grokify/lita-inspirebot
 [scrutinizer-status-svg]: https://scrutinizer-ci.com/g/grokify/lita-inspirebot/badges/quality-score.png?b=master
 [scrutinizer-status-link]: https://scrutinizer-ci.com/g/grokify/lita-inspirebot/?branch=master
 [docs-rubydoc-svg]: https://img.shields.io/badge/docs-rubydoc-blue.svg
 [docs-rubydoc-link]: http://www.rubydoc.info/gems/lita-inspirebot/
 [license-svg]: https://img.shields.io/badge/license-MIT-blue.svg
 [license-link]: https://github.com/grokify/lita-inspirebot/blob/master/LICENSE.txt