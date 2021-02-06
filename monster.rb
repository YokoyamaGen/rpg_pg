require_relative "character.rb"

class Monster < Character
  DAMAGE_CALC = 2

  def attack(brave)
    damage = @offense - brave.defense / DAMAGE_CALC

    attack_msg(attack_to: brave, battle_reuslt: damage)

    cause_damage(attack_to: brave, battle_reuslt: damage)
  end

  private

  def cause_damage(**params)
    brave = params[:attack_to]
    damage = params[:battle_reuslt]
    brave.hp -= damage
    brave.hp = 0 if brave.hp < 0
  end
end
