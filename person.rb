class Person

  attr_reader :first_name, :surname, :dob, :email, :phone_numbers

  def initialize(fname, sname, dob = nil)
    @first_name = fname.capitalize
    @surname = sname.capitalize
    @dob = Date.parse(dob) if dob
    @email = []
    @phone_numbers = []
  end

  def fullname
    "#{@first_name} #{@surname}"
  end

  def add_email(add_email)
    @email << add_email
  end

  def add_phone(add_phone)
    @phone_numbers << add_phone
  end

  def remove_email(remove_email)
    @email.delete_at(remove_email)
  end

  def remove_phone(remove_phone)
    @phone_numbers.delete_at(remove_phone)
  end

end
