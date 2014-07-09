#TerMeme

Er mer gerd. Memes fer der terminal


##From terminal

###Show me how to use ALL THE MEMES

```bash
$ termeme usage
termeme generate yuno <top text>
```

###What Memes can I make?

```bash
$ termeme list
Y U No - use: yuno
```

###Just help me

```bash
$ termeme help

  -termeme: help

  termeme --version                    prints the current termeme version

  termeme help                         this help text
  termeme list                         list all available memes
  termeme generate <meme> meme text    generate a meme with only one line of text required

  termeme usage                        show how to use all the memes

  termeme usage meme                   show how to use a meme
  termeme help <meme>
  termeme <meme> usage
  termeme <meme> help
```

##As part of your ruby

```ruby
require "termeme"

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

While testing code I find `rake console` helpful, it will start
irb and automatically include lib/termeme.rb so you can test
your changes.

when your done just send me a pull request

##Other Stuff

For better or worse, I grabbed a large amount of the scaffolding
for this from [Boom](http://github.com/holman/boom)
