require_relative "message_dialog.rb"

class GameController
  include MessageDialog

  def battle_start(**params)
    build_character(params)

    monster_appear_msg

    while @brave.hp > 0 && @monster.hp > 0
      @brave.attack(@monster)
      @monster.attack(@brave) if monster_alive?

      character_hp_msg
    end

    battle_reuslt_msg
  end

  private

  def build_character(**params)
    @brave = params[:hero]
    @monster = params[:enemy]
  end

  def monster_alive?
    @monster.hp > 0
  end
end
