require 'rails_helper' # rubocop:todo Layout/EndOfLine

RSpec.describe 'clusters/edit', type: :view do
  let(:cluster) do
    Cluster.create!(
      name: 'MyString',
      icon: 'TheText'
    )
  end

  before(:each) do
    assign(:cluster, cluster)
  end

  it 'renders the edit cluster form' do
    render

    assert_select 'form[action=?][method=?]', cluster_path(cluster), 'post' do
      assert_select 'input[name=?]', 'cluster[name]'

      assert_select 'textarea[name=?]', 'cluster[icon]'
    end
  end
end
