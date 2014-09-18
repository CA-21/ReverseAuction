require 'spec_helper'

describe Answer do

  before :each do
    @answer = Answer.new()
  end

  it 'requires a valid title' do
    expect(@answer).to be_valid

    @answer.title = 'a' * 8
    expect(@answer).not_to be_valid
  end

  it 'requires a valid content' do
    expect(@answer).to be_valid

    @answer.content = 'a' * 50
    expect(@answer).not_to be_valid
  end

  it 'requires a valid estimated fee' do
    expect(@answer).to be_valid

    @answer.estimated_fee = 'call on phone'
    expect(@answer).not_to be_valid
  end

  it 'requires a valid estimated time' do
    expect(@answer).to be_valid

    @answer.estimated_fee = 'a' * 31
    expect(@answer).not_to be_valid
  end


end