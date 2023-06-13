class ResultPrinter

    def print_status(game)
        cls
        puts "Слово: #{get_word_for_print(game.letters, game.good_letters)}"
        puts "Ошибки: #{game.bad_letters.join(",").to_s}"

        print_viselitsa(game.errors)

        if game.status == -1
            puts "Увы но вы теперь мертвы /("
            puts "Загаданное слово было: " + game.letters.join("")
        elsif game.status == 1
            puts "Поздравляем, вы выжили!"
        else
            puts "У вас осталось ошибок: " + (7 - game.errors).to_s
        end
    end

    def get_word_for_print(letters, good_letters)
        result = ""
    
        for item in letters do
            if good_letters.include?(item)
                result += item + " "
            else 
                result += "__ "
            end
        end
    
        return result
    end

    def cls
        system "cls" or system "clear"
    end

    def print_viselitsa(errors)
        case errors
        when 0
            puts "

            ------------
            |/
            |
            |         
            |
            |
            |
         ___|_____________
                   
        "
        
        when 1
            puts "

            ------------
            |/       
            |         ( )
            |         
            |
            |
            |
         ___|_____________
                   
        "
        
        when 2
            puts "

            ------------
            |/       
            |         
            |        ( )
            |         |
            |
            |
            |
         ___|_____________
                   
        "

        when 3
            puts "

            ------------
            |/       
            |         
            |        ( )
            |         |_
            |           \
            |
            |
         ___|_____________
                   
        "

        when 4
            puts "

            ------------
            |/       
            |         
            |        ( )
            |        _|_
            |       /   \
            |
            |
         ___|_____________
                   
        "

        when 5
            puts "

            ------------
            |/       
            |         
            |        ( )
            |        _|_
            |       / | \
            |         |
            |
         ___|_____________
                   
        "

        when 6
            puts "

            ------------
            |/       
            |         
            |        ( )
            |        _|_
            |       / | \
            |         |
            |        / \
            |       /   \
         ___|_____________
                   
        "

        when 7
            puts "

            ------------
            |/        |
            |         |
            |        (_)
            |        _|_
            |       / | \
            |         |
            |        / \
            |       /   \
         ___|_____________
                   
        "
        end
    end
end
