require 'spec_helper'

describe "FamilyMember class" do

  it 'Should store and return relationship information' do
    person = FamilyMember.new("joe", "bloggs", "3 Feb 1992", "Brother")
    expect(person.relationship).to eq "Brother"
  end

  
end
