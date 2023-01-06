require 'rails_helper'

RSpec.describe Cluster, type: :model do
  let(:user) do
    User.create(
      name: 'Robin',
      email: 'robinbenitez@yahoo.com',
      password: '123456'
    )
  end

  subject do
    Cluster.new(
      name: 'Food',
      icon: 'http://fasfa-utensils',
      author_id: user.id
    )
  end

  before { subject.save }

  describe 'valid attributes' do
    it 'has a name' do
      expect(subject.name).to eq('Food')
    end

    it 'has a icon' do
      expect(subject.icon).to eq('http://fasfa-utensils')
    end

    it 'has a author_id' do
      expect(subject.author_id).to eq(user.id)
    end
  end
end
