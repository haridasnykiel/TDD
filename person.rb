class Person

  attr_reader :first_name, :surname, :dob, :email

  def initialize(fname, sname, dob = nil)
    @first_name = fname.capitalize
    @surname = sname.capitalize
    @dob = Date.parse(dob) if dob
    @email = []
  end

  def fullname
    "#{@first_name} #{@surname}"
  end

  def emails
    return @email.join(", ")
  end

  def add_email(add_email)
    @email << add_email
  end

  def remove_email(remove_email)
    @email.delete_at(remove_email)
  end

end
