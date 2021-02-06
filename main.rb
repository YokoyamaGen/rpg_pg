require_relative 'brave.rb'
require_relative 'monster.rb'
require_relative 'game_controller.rb'

monster_array = [
  {name: "アークデーモン", hp: 210, offense: 140, defense: 80},
  {name: "シドー", hp: 250, offense: 255, defense: 255}
]
monster_info = monster_array[rand(2)]
monster = Monster.new(monster_info)

brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)

game_controller = GameController.new
game_controller.battle_start(hero: brave, enemy: monster)