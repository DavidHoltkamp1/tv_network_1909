class Network
attr_reader :name
attr_accessor :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor
    @shows.map  do |show|
      show.characters
        #STUCKKKK
    end

  end
end
