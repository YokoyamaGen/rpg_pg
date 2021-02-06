require_relative "character.rb"

class Brave < Character
  DAMAGE_CALC = 2

  def attack(monster)
    damage = @offense - monster.defense / DAMAGE_CALC

    attack_msg(attack_to: monster, battle_reuslt: damage)

    cause_damage(attack_to: monster, battle_reuslt: damage)
  end

  private

  def cause_damage(**params)
    monster = params[:attack_to]
    damage = params[:battle_reuslt]

    monster.hp -= damage
    monster.hp = 0 if monster.hp < 0
  end
end
