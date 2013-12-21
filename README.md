useragents-rb
=============
[![Build Status](https://travis-ci.org/debbbbie/useragents-rb.png?branch=master)](https://travis-ci.org/debbbbie/useragents-rb)

Usually, spiders must disguise themselves with plenty of User-Agents, for some
servers are smart. The gem `useragents` can give you that!

It has frequently-used browsers such as Chrome, Firefox, Internet Explorer, Safari,
 Opera and so on, with frequently-used versions.

The usage is simple, just install the gem at first, then `require 'useragents`,
and at last, `UserAgents.rand()` works for you!

Enjoy it!

## Usage

``` sh
gem install useragents
```

```ruby
require 'useragents'

# Generate a random useragent for you
UserAgents.rand()
# => ""Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1464.0 Safari/537.36"
```

Copyright © 2013 debbbbie, released under the MIT license


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/debbbbie/useragents-rb/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

