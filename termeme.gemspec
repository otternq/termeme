
Gem::Specification.new do |s|

  s.name              = 'termeme'
  s.version           = '0.0.1'
  s.date              = '2014-07-10'
  s.rubyforge_project = 'termeme'

  ## Make sure your summary is short. The description may be as long
  ## as you like.
  s.summary     = "boom lets you access text snippets over your command line."
  s.description = "God it's about every day where I think to myself, gadzooks,
  I keep typing *REPETITIVE_BORING_TASK* over and over. Wouldn't it be great if
  I had something like boom to store all these commonly-used text snippets for
  me? Then I realized that was a worthless idea since boom hadn't been created
  yet and I had no idea what that statement meant. At some point I found the
  code for boom in a dark alleyway and released it under my own name because I
  wanted to look smart."

  s.authors  = ["Nick Otter"]
  s.email    = 'otternq@gmail.com'
  s.homepage = 'https://github.com/otternq/termeme'
  s.license  = 'MIT'

  ## This gets added to the $LOAD_PATH so that 'lib/NAME.rb' can be required as
  ## require 'NAME.rb' or'/lib/NAME/file.rb' can be as require 'NAME/file.rb'
  s.require_paths = %w[lib]

  ## If your gem includes any executables, list them here.
  s.executables = ["termeme"]
  s.default_executable = 'termeme'

  ## Leave this section as-is. It will be automatically generated from the
  ## contents of your Git repository via the gemspec task. DO NOT REMOVE
  ## THE MANIFEST COMMENTS, they are used as delimiters by the task.
  # = MANIFEST =
  s.files = %w[
    Gemfile
    Gemfile.lock
    README.md
    Rakefile
    bin/termeme
    lib/termeme.rb
    lib/termeme/command.rb
    lib/termeme/command/help.rb
    lib/termeme/command/list.rb
    lib/termeme/command/usage.rb
    lib/termeme/meme.rb
    lib/termeme/meme/yuno.rb
    script/systemdeps.rb
    termeme.gemspec
    test/cli.sh
    test/run
    test/yuno.sh
  ]
  # = MANIFEST =

end
