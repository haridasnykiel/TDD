require 'pry'

class AddressBook

  attr_accessor :array

  def initialize

    @array = []

  end

  def add(person) # This add method will only work if it is a Person object.
    if person.is_a? Person
      @array << person
    else
      raise ArgumentError, "Please enter a real person." # raise is the method ArgumentError read up about this.
    end
  end



  # def add(person)
  #   @array << person
  # end

  def remove(person)
    @array.delete_at(person)
  end




  def loadyaml(file)
    a = YAML.load(File.open(file))
    a["people"].each do |p| # p will hold all the items in the array.
      person = Person.new(p['first_name'], p['surname'], p['dob'])
      @array << person # YOU MUST ADD ALL THESE VALUSE INTO THE ARRAY.
    end
    # binding.pry
  end

end
