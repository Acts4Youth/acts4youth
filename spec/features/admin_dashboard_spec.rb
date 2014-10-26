require 'rails_helper'

feature "Admin dashboard" do
  scenario "visitor is admin" do
    admin = create(:user, :admin)

    login_as admin, scope: :user

    visit rails_admin_path

    expect(page).to have_content("Site Administration")
  end

  scenario "visitor is not an admin user" do
    visit rails_admin_path

    expect(current_path).to eq(user_session_path)

    expect(page).to have_content("Log in")
  end
end
