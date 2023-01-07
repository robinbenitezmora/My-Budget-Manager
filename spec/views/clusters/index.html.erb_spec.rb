require 'rails_helper'

RSpec.describe 'clusters/index', type: :view do
  before(:each) do
    assign(:clusters, [
      Cluster.create!(
        name: 'Name',
        email: 'Email',
      ),
      Cluster.create!(
        name: 'Name',
        email: 'Email',
      )
    ])
  end
end
