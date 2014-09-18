require 'spec_helper'

describe Lawyer do

  before(:each) do
    @lawyer = create(:lawyer)
  end

  it 'is valid with a name' do
    expect(@lawyer).to be_valid
  end

  it 'is invalid without a name' do
    @lawyer.name = nil
    expect(@lawyer).not_to be_valid
  end

  it 'has reasonable length for name' do
    @lawyer.name = 'd' * 9
    expect(@lawyer).not_to be_valid

    @lawyer.name = 'a' * 51
    expect(@lawyer).not_to be_valid
  end

  it 'is invalid without an email address' do
    @lawyer.email = nil
    expect(@lawyer).not_to be_valid
  end

  it 'is invalid with a duplicate email address' do
    @lawyer.save

    lawyer2 = @lawyer.dup
    expect(lawyer2).not_to be_valid
  end

  it 'returns name, city, and registration as a string' do
    expect(@lawyer.to_s).to eq 'Some Tester, nowhere, something'
  end

  it 'has a valid factory for test data' do
    expect(@lawyer).to be_valid
  end

  it 'does not allow invalid email addresses' do
    @lawyer.email = 'sometester'
    expect(@lawyer).not_to be_valid
  end
end