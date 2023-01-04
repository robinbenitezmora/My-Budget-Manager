require 'rails_helper' # rubocop:todo Layout/EndOfLine

RSpec.describe 'associations/edit', type: :view do
  let(:association) do
    Association.create!
  end

  before(:each) do
    assign(:association, association)
  end

  it 'renders the edit association form' do
    render

    assert_select 'form[action=?][method=?]', association_path(association), 'post' do
      # Nothing
    end
  end
end
