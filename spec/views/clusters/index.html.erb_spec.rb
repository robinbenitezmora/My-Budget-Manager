require 'rails_helper'

RSpec.describe 'clusters/index', type: :view do
  before :each do
    @user = User.create(
      name: 'Robin',
      email: 'robinbenitez@yahoo.com',
      password: '123456',
    )

    @category = @user.clusters.create(
      name: 'Food',
      icon: 'https://fasfa-utensils',
      user_id = user.id
    )

    visit new_user_session_path
      fill_in 'user[eamil]', with: @user.eamil
      fill_in 'user[password]', with: @user.password
      click_button 'Log in'
      visit clusters_path
  end

  describe 'GET /categories' do

    it 'displays the categories' do
      expect(page).to have_content('Food')
      expect(page).to have_content('fasfa-utensils')
      expect(page).to have_content('Transactions: 0')
    end

    it 'displays the new category' do
      expect(page).to have_content('New cluster')
    end
  end
end
