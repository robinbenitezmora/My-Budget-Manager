require 'rails_helper'

RSpec.describe "associations/show", type: :view do
  before(:each) do
    assign(:association, Association.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
