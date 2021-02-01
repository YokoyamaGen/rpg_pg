require_relative "character.rb"

class Brave < Character
  def attack(monster)
    hit_point = offense - monster.defense / 2
    puts "#{name}の攻撃！"
    puts "#{monster.name}に#{hit_point}のダメージを与えた！"
    monster.hp -= hit_point

    if monster.hp < 0
      monster.hp = 0
    end
  end
end
