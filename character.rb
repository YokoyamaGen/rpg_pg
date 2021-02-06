require_relative "message_dialog.rb"

class Character
  include MessageDialog
  attr_accessor :hp
  attr_reader :name, :defense

  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end
end
