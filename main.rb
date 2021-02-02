require_relative 'brave.rb'
require_relative 'monster.rb'

monster_array = [{name: "アークデーモン", hp: 210, offense: 140, defense: 80}, {name: "シドー", hp: 250, offense: 255, defense: 255}]
monster_info = monster_array[rand(2)]
monster = Monster.new(monster_info)

brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)

puts "#{monster.name}があらわれた!"

def display_character_status(brave, monster)
  puts <<~TEXT
  *=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
  【#{brave.name}】HP: #{brave.hp}
  【#{monster.name}】HP: #{monster.hp}
  *=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
  TEXT
end

while brave.hp > 0 && monster.hp > 0 
  brave.attack(monster)
  break if monster.hp == 0
  monster.attack(brave)
  break if brave.hp == 0
  display_character_status(brave, monster)
end

display_character_status(brave, monster)

if monster.hp == 0
  puts "#{monster.name}をやっつけた！"
elsif brave.hp == 0
  puts "#{brave.name}はしんでしまった！"
end