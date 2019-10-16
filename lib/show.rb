class Show
attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    total = @characters.map do |character|
      character.salary
    end
    total.sum
  end
end
