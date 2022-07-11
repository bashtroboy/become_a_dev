# Quesions

# 1. How would you refactor this?
# 2. How would you take a TDD appraoch to this, and what kind of tests would you write?


def manipulate(formula, text  = "Hello World")

    # Starting variables
    @cursor_pos = 0
    @text = text
    
    def inc
        # Check to make sure we're not at the last character as we can't exceed the length of the word
        if @cursor_pos < @text.length
            @cursor_pos += 1
        end
    end

    def dec
        # Check to make sure we're not in the first position as we can't go negative
        if @cursor_pos > 0
            @cursor_pos -= 1
        end
    end
    
    formula.each_char.with_index do |c, i|
        if (formula[i-1].to_i == 0 || nil || "")
            case c
            when "l"
                inc
            when "h"
                dec
            when "r"
                @text[@cursor_pos] = formula[i+1]
                inc
            else
                if (spaces = c.to_i) > 0
                    case formula[i+1]
                    when "l"
                        spaces.times do inc end
                    when "h"
                        spaces.times do dec end
                    when "r"
                        replacement_char = formula[i+2]
                        spaces.times do
                            @text[@cursor_pos] = replacement_char
                            inc
                        end 
                    end
                end
            end
        end
    end

    # Output the results
    puts "Formula: #{formula}"
    puts "Cursor position: #{@cursor_pos}"
    puts "Manipulated text: #{@text}"
    puts ""
end


manipulate('hhlhllhlhhll')
manipulate('rhllllllrw')
manipulate('rh6l9l4hrw')
manipulate('9lrL7h2rL')