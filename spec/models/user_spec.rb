require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(
      name: 'Robin',
      email: 'robinbenitez@yahoo.com',
      password: '123456'
    )
  end

  before { subject.save }

  describe 'valid attributes' do
    it 'has a name' do
      expect(subject.name).to eq('Robin')
    end

    it 'has a email' do
      expect(subject.email).to eq('robinbenitez@yahoo.com')
    end

    it 'has a password' do
      expect(subject.password).to eq('123456')
    end
  end

  describe 'valid attributes' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end
  end
end
