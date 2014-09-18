require 'spec_helper'

describe Question do

  before :each do
    @question = Question.new()
  end

  it 'requires a title' do
    @question.title = 'a' * 21
    expect(@question).to be_valid

    @question.title = 'a' * 10
    expect(@question).not_to be_valid
  end

  it 'requires valid content' do
    @question.content = 'a' * 201
    expect(@question).to be_valid

    @question.content = 'a' * 199
    expect(@question).not_to be_valid
  end

  it 'requires valid email address' do
    @question.email = 'someone@example.com'
    expect(@question).to be_valid

    @question.email = 'sometester'
    expect(@question).not_to be_valid
  end

  it 'requires valid city' do
    @question.city = 'somewhere'
    expect(@question).to be_valid

    @question.city = nil
    expect(@question).not_to be_valid
  end

  it 'requires valid phone' do
    @question.phone = '123456789'
    expect(@question).to be_valid

    @question.phone = 'something'
    expect(@question).not_to be_valid
  end

end