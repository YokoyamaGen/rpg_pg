monster_array = ["アークデーモン", "シドー"]
MONSTER_NAME = monster_array[rand(2)] 
puts "#{MONSTER_NAME}があらわれた!"

require_relative 'brave.rb'
require_relative 'monster.rb'

brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)
if MONSTER_NAME == "アークデーモン"
  monster = Monster.new(name: MONSTER_NAME, hp: 210, offense: 140, defense: 80)
elsif MONSTER_NAME == "シドー"
  monster = Monster.new(name: MONSTER_NAME, hp: 250, offense: 255, defense: 255)
end

def display_character_status(brave, monster)
  puts <<~TEXT
  *=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
  【#{brave.name}】HP: #{brave.hp}
  【#{monster.name}】HP: #{monster.hp}
  *=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
  TEXT
end

while true
  brave.attack(monster)

  if monster.hp >= 1
    monster.attack(brave)
  else
    display_character_status(brave, monster)
    puts "#{monster.name}をやっつけた！"
    break
  end

  if brave.hp >= 1
    display_character_status(brave, monster)
  else
    display_character_status(brave, monster)
    puts "#{brave.name}はしんでしまった！"
    break
  end
end