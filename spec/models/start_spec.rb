require 'rails_helper'

RSpec.describe Start, type: :model do
  let(:user) do
    User.create(
      name: 'Robin',
      email: 'robinbenitez@yahoo.com',
      password: '123456'
    )
  end

  subject do
    Start.new(
      name: 'Hamburguer',
      amount: 50,
      author_id: user.id
    )
  end

  before { subject.save }

  describe 'valid attributes' do
    it 'has a name' do
      expect(subject.name).to eq('Hamburguer')
    end

    it 'has a amount' do
      expect(subject.amount).to eq(50)
    end

    it 'has a author_id' do
      expect(subject.author_id).to eq(user.id)
    end
  end
end
