class AddressBook < Person

  attr_accessor :array

  def initialize

    @array = []

  end

  def add(person)
    @array << person
  end

end
