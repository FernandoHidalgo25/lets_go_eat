module RepeatRepeat

    require 'colorize'

    def curtains(n, a)
        while n > 0
          puts Rainbow("      o          o          o               o o o               ").yellow
          puts Rainbow("      o o o        o o o      o o o o          o                ").yellow
          puts Rainbow("      o                           o         o o o o o           ").yellow
          puts Rainbow("      o          o o o o                          o       o o   ").yellow
          puts Rainbow("    o o o o            o       o                o       o     o ").yellow
          puts Rainbow("    o o     o      o o        o o o o           o o o     o o   ").yellow
          n -= 1
          sleep(a)
        end
    end

end
