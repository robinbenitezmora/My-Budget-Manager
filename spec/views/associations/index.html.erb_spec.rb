require 'rails_helper'

RSpec.describe 'associations/index', type: :view do
  before(:each) do
    assign(:associations, [
             Association.create!,
             Association.create!
           ])
  end

  it 'renders a list of associations' do
    render
    cell = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell.to_s, text: /.*/, count: 2
  end
end
