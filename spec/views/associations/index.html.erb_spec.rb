require 'rails_helper'

RSpec.describe 'associations/index', type: :view do
  before(:each) do
    assign(:associations, [
      Association.create!(
        name: 'Name',
        email: 'Email',
      ),
      Association.create!(
        name: 'Name',
        email: 'Email',
      )
    ])
  end
end
