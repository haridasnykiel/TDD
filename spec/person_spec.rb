require 'spec_helper'

describe "Person class" do
  it 'should store and return personal information' do
    person = Person.new("joe", "bloggs", "3 Feb 1992") # Testing the intialize method

    expect(person.dob).to eq Date.new(1992,2,3) # This will test the method dob to make sure it output
    expect(person.first_name).to eq "Joe"
    expect(person.surname).to eq "Bloggs"
    expect(person.fullname).to eq "Joe Bloggs"
  end

  it "dob method should be optional" do
    person = Person.new("joe", "bloggs")
    expect(person.dob).to be_nil
  end

  it "Should have emails as an array" do
    person = Person.new("joe", "bloggs")
    expect(person.email).to be_an(Array)
  end

  it "Should be able to add elements to the email array" do
    person = Person.new("joe", "bloggs")
    person.add_email('hari@gmail.com')
    expect(person.email).to eq ["hari@gmail.com"]
  end

  it "Should be able to remove an element from the email array" do
    person = Person.new("joe", "bloggs")
    person.add_email('hari@gmail.com')
    person.remove_email(0)
    expect(person.email).to be_empty
  end
end
