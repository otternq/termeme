#TerMeme

Er mer gerd. Memes fer der terminal


##From terminal

##As part of your ruby

```ruby
require 'termeme'

yuno = TerMeme::MEME::YUNo.new
yuno.generate("printed")
```

##Contributing

If you wanna meme with us, clone the repos, make a feature branch
and then code your heart out.

Once you have written/updated the yur meme make sure to update
the _gemspec_ with `rake gemspec` which will update the file
list, date, etc. You can also run `rake build` to generate the
gem in the _pkg_ directory.

While testing code I find `rake localinstall` helpful, it will generate
the gem file and install it for you then you can start testing
your changes with `termeme`.
