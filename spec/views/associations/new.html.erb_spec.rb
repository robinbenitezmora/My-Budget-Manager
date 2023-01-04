require 'rails_helper'

RSpec.describe 'associations/new', type: :view do
  before(:each) do
    assign(:association, Association.new)
  end

  it 'renders new association form' do
    render

    assert_select 'form[action=?][method=?]', associations_path, 'post' do
    end
  end
end
