require 'rails_helper' # rubocop:todo Layout/EndOfLine

RSpec.describe 'users/index', type: :view do
  before(:each) do
    assign(:users, [
             User.create!(
               name: 'Name'
             )
           ])
  end

  it 'renders a list of users' do
    render
    cell = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell.to_s, text: 'Name'.to_s, count: 1
  end
end
