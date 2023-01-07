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
      user_id: user.id
    )
  end

  before { subject.save }

  describe 'valid attributes' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end
  end

  describe 'invalid attributes' do
    it 'is not valid without a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a user_id' do
      subject.user_id = nil
      expect(subject).to_not be_valid
    end
  end
end
