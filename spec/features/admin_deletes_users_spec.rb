require 'rails_helper'

feature "admin deletes user" do
  let!(:item) { create(:item_2) }
  let!(:admin) do
    create(
      :admin,
      email: "pinkpinksopink@gmail.com",
      password: "123123123",
      role: "admin")
  end
  let!(:user) do
    create(
      :user,
      email: "asdf@gmail.com",
      password: "123123123"
    )
  end
  let!(:review) do
    create(
      :review,
      item: item,
      user: user,
      rating: 5,
      description: "Great!"
    )
  end

  before(:each) do
    visit root_path
    click_link "Log in"
    fill_in "Email", with: "pinkpinksopink@gmail.com"
    fill_in "Password", with: "123123123"
    click_button "Log in"
    click_link "Admin Section"
    click_link "Users"
  end

  scenario "admin views list of users" do
    expect(page).to have_content "List of all Users"
    expect(page).to have_content "asdf@gmail.com"
    expect(page).to have_content "pinkpinksopink@gmail.com"
  end

  scenario "admin successfully deletes users" do
    expect(page).to have_content "asdf@gmail.com"

    click_button('Delete', match: :first)
    expect(page).to have_content "asdf@gmail.com has been deleted!"
    visit admins_users_path
    expect(page).to_not have_content "asdf@gmail.com"
  end

  scenario "reviews are deleted when user is deleted" do
    click_button('Delete', match: :first)
    visit item_path(item)

    expect(page).to_not have_content "5 - Great!"
    expect(page).to have_content "No reviews yet!"
  end
end
