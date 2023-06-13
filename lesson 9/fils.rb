class Film
    def films
        case hum
        when 'Джеймс Кэмерон'
            puts DK[rand(5)]
        when 'Майкл Бэй'
            puts MB[rand(2)]
        when 'Квентин Тарантино'
            puts KT[rand(3)]
        else
            puts "Мы не знаем этого режиссёра, нам нечего вам предложить"
        end
    end    
end