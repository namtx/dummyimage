require_relative "./parser.rb"

module DummyImage
    class Image
        def initialize parser
            @parser = parser
        end


        def image
            unless File.exists? image_name
                create_image!
            end
            image_name
        end

        private
        def create_image!
            system "convert -size #{@parser.width}x#{@parser.height} -background '##{@parser.bgcolor}' -fill '##{@parser.fgcolor}' -gravity Center +pointsize label:'#{@parser.width}x#{@parser.height}' #{image_name}"
        end


        def image_name
            [@parser.width, @parser.height, @parser.bgcolor, @parser.fgcolor, @parser.path].join("_") + "." + @parser.format
        end
    end
end

