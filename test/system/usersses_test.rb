require "application_system_test_case"

class UserssesTest < ApplicationSystemTestCase
  setup do
    @userss = usersses(:one)
  end

  test "visiting the index" do
    visit usersses_url
    assert_selector "h1", text: "Usersses"
  end

  test "creating a Userss" do
    visit usersses_url
    click_on "New Userss"

    fill_in "Address", with: @userss.address
    fill_in "Email", with: @userss.email
    fill_in "Mobile", with: @userss.mobile
    fill_in "Name", with: @userss.name
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Create Userss"

    assert_text "Userss was successfully created"
    click_on "Back"
  end

  test "updating a Userss" do
    visit usersses_url
    click_on "Edit", match: :first

    fill_in "Address", with: @userss.address
    fill_in "Email", with: @userss.email
    fill_in "Mobile", with: @userss.mobile
    fill_in "Name", with: @userss.name
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Update Userss"

    assert_text "Userss was successfully updated"
    click_on "Back"
  end

  test "destroying a Userss" do
    visit usersses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Userss was successfully destroyed"
  end
end
