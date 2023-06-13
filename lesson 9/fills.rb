if Gem.win_platform?
    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__

    [STDIN, STDOUT].each do |io|
        io.set_encoding(Encoding.default_external, Encoding.default_internal)
    end
end

puts "Здравствуйте, сегодня мы подготовили фильмы 3 режиссёров. Джеймс Кэмерон, Майкл Бэй, Квентин Тарантино. Фильмы какого режиссёра вы хотите посмотреть?"
hum = gets.encode("UTF-8").chomp
DK = [
    "Титаник",
    "Звёздные войны эпизод",
    "История научной фантастики с Джеймсом Кэмероном",
    "Терминатор 2: Судный день",
    "Алита: Боевой ангел"
]
MB = [
    "Трансформеры",
    "Трансформеры: Последний рыцарь",
    "Армагеддон",
    "Плохие парни 2",
    "Призрачная шестёрка",
    "Кровью и потом: Анаболики",
    "Трансформеры: Месть падших"
    
    
]
KT = [
    "Убить Билла",
    "Джанго освобожденный",
    "Однажды в Голливуде",
    "Бешеные псы",
    "Бесславные убл*дки"

]

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