require 'rails_helper'

RSpec.describe "starts/index", type: :view do
  before(:each) do
    assign(:starts, [
      Start.create!(
        name: "Name",
        amount: "9.99"
      ),
      Start.create!(
        name: "Name",
        amount: "9.99"
      )
    ])
  end

  it "renders a list of starts" do
    render
    cell = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select "#{cell}", text: "Name".to_s, count: 2
    assert_select "#{cell}", text: "9.99".to_s, count: 2
  end
end
