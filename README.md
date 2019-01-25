bottomless_void
---------------

Why should you be limited to only one nothing?

## Usage

```ruby
irb(main):001:0> require 'bottomless_void'
=> true
irb(main):002:0> BottomlessVoid.enable!
=> nil
irb(main):003:0> mynil = NilClass.new
=> nil
irb(main):004:0> mynil.nil?
=> true
irb(main):005:0> BottomlessVoid.disable!
=> nil
irb(main):006:0> mynil.nil?
=> true
irb(main):007:0> othernil = NilClass.new
NoMethodError: undefined method `new' for NilClass:Class
	from (irb):7
	from /Users/acoyle/.rubies/ruby-2.4.4/bin/irb:11:in `<main>'
```

## Development

The code is all in `ext/bottomless_void/bottomless_void.c`. The ruby file is just there to require it. RSpec testslive in `spec/bottomless_void_spec.rb` because it's `$CURRENT_YEAR`.

Running just `rake` will compile the extension (if needed) then run the specs. 

In the unlikely case that someone releases a new version, make sure to tick the version in the gemspec I didn't feel like doing the cute thing with `version.rb` that bundler does by default.

## Should I Use This?

No... 

But you know you want to


