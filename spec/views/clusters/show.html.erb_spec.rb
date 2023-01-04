require 'rails_helper'

RSpec.describe "clusters/show", type: :view do
  before(:each) do
    assign(:cluster, Cluster.create!(
      name: "Name",
      icon: "Icon"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Icon/)
  end
end
