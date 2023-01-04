require 'rails_helper'

RSpec.describe 'clusters/new', type: :view do
  before(:each) do
    assign(:cluster, Cluster.new(
                       name: 'MyString',
                       icon: 'TheText'
                     ))
  end

  it 'renders new cluster form' do
    render

    assert_select 'form[action=?][method=?]', clusters_path, 'post' do
      assert_select 'input[name=?]', 'cluster[name]'

      assert_select 'textarea[name=?]', 'cluster[icon]'
    end
  end
end
