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
    regex = /\A\w+(?:\.\w+)?@[a-z]+\.(?:com|org|co\.uk)\z/
    check = regex.match(add_email)

    if check == nil
      raise ArgumentError, "Please enter a correct email address."
    else
      @email << add_email
    end

  end

  def add_phone(add_phone)
    regex = /020\d+{8}/
    check = regex.match(add_phone)

    if check == nil
      raise ArgumentError, "Please enter a correct phone number."
    else
      @phone_numbers << add_phone
    end

  end

  def remove_email(remove_email)
    @email.delete_at(remove_email)
  end

  def remove_phone(remove_phone)
    @phone_numbers.delete_at(remove_phone)
  end

  def person_s
    return "#{fullname} was born on #{@dob}.\n Their email addresses are:#{@email}.\n Their phone numbers are:#{@phone_numbers}.\n"
  end



end
