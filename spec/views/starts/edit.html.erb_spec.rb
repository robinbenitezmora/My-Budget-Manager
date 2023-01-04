require 'rails_helper'

RSpec.describe "starts/edit", type: :view do
  let(:start) {
    Start.create!(
      name: "MyString",
      amount: "10.5"
    )
  }

  before(:each) do
    assign(:start, start)
  end

  it "renders the edit start form" do
    render

    assert_select "form[action=?][method=?]", start_path(start), "post" do

      assert_select "input[name=?]", "start[name]"

      assert_select "input[name=?]", "start[amount]"
    end
  end
end
