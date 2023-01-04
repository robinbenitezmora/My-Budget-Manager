require 'rails_helper' # rubocop:todo Layout/EndOfLine

RSpec.describe 'users/show', type: :view do
  before(:each) do
    assign(:user, User.create!(
                    name: 'Name'
                  ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
  end
end
