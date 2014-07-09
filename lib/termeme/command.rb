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

      def help
        output = %{
          -termeme: help
        }
      end

    end
  end
end
