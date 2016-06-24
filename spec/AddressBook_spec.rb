require 'spec_helper'

describe "AddressBook class" do

  before :each do
    @book = AddressBook.new
  end

  it "Can create an address book" do
    # book = AddressBook.new
    expect(@book).to be_a AddressBook
  end

  it "Should be able to add a person." do
    # book = AddressBook.new
    person1 = Person.new("joe", "bloggs", "3 Feb 1992")
    person2 = Person.new("james", "bloggs", "4 Feb 1992")
    @book.add person1
    @book.add person2

    expect(@book.array).to eq [person1, person2]

  end

  it "Should be able to remove a person from the array." do
    person1 = Person.new("joe", "bloggs", "3 Feb 1992")
    @book.add person1
    @book.remove(0)

    expect(@book.array).to be_empty
  end

  it "Should not be able to add an object from any other class apart from Person and FamilyMember" do
    person1 = AddressBook.new

    expect{@book.add person1}.to raise_error(ArgumentError)

  end

  it 'should load people from YAML file' do
    # File.open("./people")
    @book.loadyaml("./people.yml") # this will load up the yaml file.
    expect(@book.array.size).to eq 3
    # expect(@book.last.fullname).to eq "Joe Bloggs"
    # expect(@book.last.email.first).to "joe@hotmail.com"
  end

end
