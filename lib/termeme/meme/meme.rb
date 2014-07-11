require 'skeptick'
include Skeptick

module TerMeme
  module MEME

    class Position

      def initialize(left, top)
        @top = top
        @left = left
      end

      def getTop
        @top
      end

      def getLeft
        @left
      end

    end

    class MEME

      def initialize
        @topText = nil
        @bottomText = nil

        @topPosition = nil
        @bottomPosition = nil
      end

      def setTopText(text)
        @topText = text
      end

      def setBottomText(text)
        @bottomText = text
      end

      def setTopPosition(position)
        @topPosition = position
      end

      def setBottomPosition(position)
        @bottomPosition = position
      end

      def create()

        image_size = '400x320'


        textAux = getTextSettings(@topText, @bottomText)

        # Create a convert command with all of the above and run it
        logo = convert(textAux, to: "meme.png")
        logo.build


      end

      def getTextSettings(topText, bottomText)

        tLeft = @topPosition.getLeft
        tTop = @topPosition.getTop

        bLeft = @bottomPosition.getLeft
        bTop = @bottomPosition.getTop

        # Build a text image that says "Skeptick" using specified font, add gradient
        return image do
          canvas :none, size: '500x500'
          font   'Arial Bold.ttf'
          set    :fill, '#000000'

          set    :pointsize, 90
          write  "#{topText}", left: tLeft, top: tTop

          set    :pointsize, 50
          write  "#{bottomText}!", left: tLeft, top: bTop
        end
      end

    end
  end
end
