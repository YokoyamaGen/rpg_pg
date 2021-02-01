require_relative "character.rb"

class Monster < Character
  def attack(brave)
    hit_point = offense - brave.defense / 2
    puts "#{name}の攻撃！"
    puts "#{brave.name}は#{hit_point}のダメージを受けた！"
    brave.hp -= hit_point

    if brave.hp < 0
      brave.hp = 0
    end
  end
end
