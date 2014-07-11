require 'skeptick'

include Skeptick

module TerMeme
  module MEME
    class YUNo

      DATA = {
        :name => "Y U No",
        :shortName => "yuno",
        :inputs => ["top"]
      }

      def setText(text)
        @text = text
      end

      def generate
        puts "Generating #{DATA[:name]} meme!"
        puts @text

        image_size = '400x120'
        left, top  = 8, 80

        textLocal = @text

        # Build a text image that says "Skeptick" using specified font, add gradient
        text = image do
          canvas :none, size: '395x110'
          font   'Arial Bold.ttf'
          set    :pointsize, 90
          set    :fill, '#000000'
          write  "#{textLocal}!", left: left, top: top
          apply  :blur, '0x0.7'
        end

        # Create a convert command with all of the above and run it
        logo = convert(text, to: "logo.png")
        logo.build

      end

      def self.factory(input)
        yuno = YUNo.new
        yuno.setText(input)
        return yuno
      end

    end
  end
end
