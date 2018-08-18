require 'rails_helper'

describe Idea do
  it 'will not save without a name' do
    idea = described_class.new
    expect(idea).to_not be_valid
  end

  it 'will save with a name' do
    idea = Idea.new name: 'Foobar' 
    expect(idea).to be_valid
  end
  
  it "will update description" do
    mydescription ="thing2"
    idea = Idea.new name: 'Foobar', description: "thing"
    idea.description = mydescription
    expect(idea.description).to eql(mydescription)
  end
  
  #pending test
  it "has an author"
  xit "has a date"
  pending it "has a rating"
end