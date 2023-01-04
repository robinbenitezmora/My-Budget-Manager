require 'rails_helper'

RSpec.describe "associations/edit", type: :view do
  let(:association) {
    Association.create!()
  }

  before(:each) do
    assign(:association, association)
  end

  it "renders the edit association form" do
    render

    assert_select "form[action=?][method=?]", association_path(association), "post" do
    end
  end
end
