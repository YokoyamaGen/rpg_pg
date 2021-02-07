module MessageDialog

  def monster_appear_msg
    puts "#{@monster.name}があらわれた!"
  end

  def character_hp_msg
    puts <<~TEXT
    *=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
    【#{@brave.name}】HP: #{@brave.hp}
    【#{@monster.name}】HP: #{@monster.hp}
    *=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
    TEXT
  end

  def attack_msg(**params)
    character = params[:attack_to]
    damage = params[:battle_reuslt]
  
    puts "#{@name}の攻撃！"
    if character.kind_of?(Monster)
      puts "#{character.name}に#{damage}のダメージを与えた！"
    else
      puts "#{character.name}は#{damage}のダメージを受けた！" 
    end
  end

  def battle_reuslt_msg
    if @monster.hp == 0
      puts "#{@monster.name}をやっつけた！"
    else
      puts "#{@brave.name}はしんでしまった！"
    end
  end
end
