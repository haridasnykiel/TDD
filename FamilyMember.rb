class FamilyMember < Person

  attr_accessor :relationship

  def initialize(fname, sname, dob = nil, relationship)
      @relationship = relationship
      super(fname, sname, dob = nil)
  end

end
