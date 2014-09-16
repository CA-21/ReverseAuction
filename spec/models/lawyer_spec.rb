require 'spec_helper'

describe Lawyer do

  before(:each) do
    @lawyer = Lawyer.new(name: 'Some Tester', email: 'someone@example.com', registration_number: 'something', address: 'some road in some city', city: 'nowhere', phone: '123456789', password: 'password123')
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

    lawyer2 = Lawyer.new(name: 'Some Tester', email: 'someone@example.com', registration_number: 'something', address: 'some road in some city', city: 'nowhere', phone: '123456789', password: 'password123')
    expect(lawyer2).not_to be_valid
  end

  it 'returns name, city, and registration as a string' do
    expect(@lawyer.to_s).to eq 'Some Tester, nowhere, something'
  end

  it 'does not allow invalid email addresses' do
    @lawyer.email = 'sometester'
    expect(@lawyer).not_to be_valid
  end
end