require 'rails_helper' # rubocop:todo Layout/EndOfLine

RSpec.describe 'starts/new', type: :view do
  before(:each) do
    assign(:start, Start.new(
                     name: 'MyString',
                     amount: '9.99'
                   ))
  end

  it 'renders new start form' do
    render

    assert_select 'form[action=?][method=?]', starts_path, 'post' do
      assert_select 'input[name=?]', 'start[name]'

      assert_select 'input[name=?]', 'start[amount]'
    end
  end
end
