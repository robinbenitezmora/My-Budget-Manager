require 'rails_helper'

RSpec.describe 'clusters/index', type: :view do
  before(:each) do
    assign(:clusters, [
             Cluster.create!(
               name: 'Name',
               icon: 'Icon'
             ),
             Cluster.create!(
               name: 'Name',
               icon: 'Icon'
             )
           ])
  end

  it 'renders a list of clusters' do
    render
    cell = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell.to_s, text: 'Name'.to_s, count: 2
    assert_select cell.to_s, text: 'Icon'.to_s, count: 2
  end
end
