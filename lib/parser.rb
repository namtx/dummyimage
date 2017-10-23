module DummyImage
    class Parser
        def initialize path, options = {}
            @path, @format = path.split ".", 2
            @options = options
        end

        def format
            if %w(png jpg jpeg gif).include? @format
                @format
            else
                "png"
            end
        end

        def path
            @path
        end

        def height
            @height ||= valid_size(@options[:height]) || "300"
        end

        def width
            @width ||= valid_size(@options[:width]) || "300"
        end

        def fgcolor
            @fgcolor ||= valid_color(@options[:fgcolor]) || "fff"
        end

        def bgcolor
            @bgcolor ||= valid_color(@options[:bgcolor]) || "000"
        end

        private
        def valid_size size
            size[/^\d+$/] if size
        end

        def valid_color color
            color[/^[\da-fA-F]+$/] if color
        end
    end
end
