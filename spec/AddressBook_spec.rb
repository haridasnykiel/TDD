require 'spec_helper'

describe "AddressBook class" do

  it "Can create an address book" do
    book = AddressBook.new
    expect(book).to be_a AddressBook
  end

  it "Should be able to add a person." do
    book = AddressBook.new
    person1 = Person.new("joe", "bloggs", "3 Feb 1992")
    person2 = Person.new("james", "bloggs", "4 Feb 1992")
    book.add person1
    book.add person2

    expect(book.array).to eq [person1, person2]

  end

  
end
