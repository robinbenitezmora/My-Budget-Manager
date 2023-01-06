require 'rails_helper'

RSpec.describe 'associations/index', type: :view do
  before :each do
    @user = User.create(
      name: 'Robin',
      email: 'robinbenitez@yahoo.com',
      password: '123456'
    )

    @category = @user.clusters.create(
      name: 'Food',
      icon: 'https://fasfa-utensils',
      user_id: @user.id
    )

    @start = Start.create(
      name: 'Domino Pizza',
      amount: 50,
      author_id: @user.id
    )

    @cluster_start = Association.create(cluster_id: @category.id, start_id: @start.id)

    visit new_user_session_path
    fill_in 'user[email]', with: @user.email
    fill_in 'user[password]', with: @user.password
    click_button 'Log in'
    visit clusters_path
  end

  describe 'GET /relations between clusters and starts' do
    it 'displays all transactions' do
      visit cluster_associations_path(@category.id)
      expect(page).to have_content('Domino Pizza')
      expect(page).to have_content('50')
      expect(page).to have_content('Food')
      expect(page).to have_content('Add a new transaction')
    end
  end
end
