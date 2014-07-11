require 'termeme/command/help'
require 'termeme/command/list'
require 'termeme/command/usage'

module TerMeme
  class Command
    class << self

      # Public: executes a command.
      #
      # args    - The actual commands to operate on. Can be as few as zero
      #           arguments or as many as three.
      def execute(*args)
        command = args.shift
        major   = args.shift
        minor   = args.empty? ? nil : args.join(' ')

        return help unless command
        delegate(command, major, minor)
      end

      def version
        puts TerMeme::VERSION
      end

      # Public: allows main access to most commands.
      #
      # Returns output based on method calls.
      def delegate(command, major, minor)

        return help                                 if command == "help" && major.nil?
        return version                              if command == "--version"
        return list                                 if command == "list"
        return MEME.generate(major, minor) if command == "generate"
        return usage                                if command == "usage" && major.nil?
        return usage(major)                         if ["usage", "help"].include?(command)
        return usage(command)                       if ["usage", "help"].include?(major)

      end

    end
  end
end
