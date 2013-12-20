useragents-rb
=============
[![Build Status](https://travis-ci.org/debbbbie/useragents-rb.png?branch=master)](https://travis-ci.org/debbbbie/useragents-rb)
## Usage

```ruby
require 'useragents'

UserAgents.list() # Default useragent list, which is commonly used
# => Chrome : 27, 28, 29, 30, 31
#    Firefox: 23
#    IE     :  7,  8,  9, 10, 11
#    Safari : xx
#    Opera  : xx
UserAgents.rand() # Generate a useragent for you
```

``` ruby
require 'useragents'

UserAgents.use(chrome: {gt:29}, ie: {eq: 9})
UserAgents.list()
# => Chrome : 29, 30, 31
#    IE     :  9

UserAgents.use(:all)
UserAgents.list()
# ...
```
