require_relative 'brave.rb'
require_relative 'monster.rb'

monster_array = [
  {name: "アークデーモン", hp: 210, offense: 140, defense: 80},
  {name: "シドー", hp: 250, offense: 255, defense: 255}
]
monster_info = monster_array[rand(2)]
monster = Monster.new(monster_info)

brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)

puts "#{monster.name}があらわれた!"

while brave.hp > 0 && monster.hp > 0 
  brave.attack(monster) 
  monster.attack(brave) if monster.hp > 0

  puts <<~TEXT
  *=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
  【#{brave.name}】HP: #{brave.hp}
  【#{monster.name}】HP: #{monster.hp}
  *=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
  TEXT
end

if monster.hp == 0
  puts "#{monster.name}をやっつけた！"
else
  puts "#{brave.name}はしんでしまった！"
end