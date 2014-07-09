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

      def help
        output = %{
          -termeme: help

          termeme --version                    prints the current termeme version

          termeme help                         this help text
          termeme generate <meme> meme text    generate a meme with only one line of text required

        }

        puts output.gsub(/^ {8}/, '') # strip the first eight spaces of every line
      end

      def generate(meme, minor)

      case meme
      when 'yuno'
         yuno = TerMeme::MEME::YUNo.new
         yuno.setText minor
         yuno.generate
       end

      end

      # Public: allows main access to most commands.
      #
      # Returns output based on method calls.
      def delegate(command, major, minor)

        return help     if command == "help"
        return version  if command == "--version"
        return generate(major, minor) if command == "generate"

      end

    end
  end
end
