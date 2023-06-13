if Gem.win_platform?
    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__

    [STDIN, STDOUT].each do |io|
        io.set_encoding(Encoding.default_external, Encoding.default_internal)
    end
end
puts "Здравствуйте, тут информация о том кто являлся главными злодеями таких героев как: Бетмен, Человек паук, Супермэн, Лунтик, Барбоскины. Злодея какого героя вы хотите узнать?"
heroes = STDIN.gets.encode("UTF-8").chomp
# heroes = ARGV[0]
case heroes
when 'Бэтмен'
    puts "Джокер"
when 'Человек паук'
    puts "Веном"
when 'Супермэн'
    puts "Аркадий Паровозов"
when 'Лунтик'
    puts "Пьявка"
when 'Барбоскины'
    puts "Три кота"
else
    puts "Злодея какого героя вы хотите узнать?"
end
