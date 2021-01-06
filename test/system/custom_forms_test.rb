require "application_system_test_case"

class CustomFormsTest < ApplicationSystemTestCase
  setup do
    @custom_form = custom_forms(:one)
  end

  test "visiting the index" do
    visit custom_forms_url
    assert_selector "h1", text: "Custom Forms"
  end

  test "creating a Custom form" do
    visit custom_forms_url
    click_on "New Custom Form"

    fill_in "Name", with: @custom_form.name
    fill_in "Published at", with: @custom_form.published_at
    fill_in "User", with: @custom_form.user_id
    click_on "Create Custom form"

    assert_text "Custom form was successfully created"
    click_on "Back"
  end

  test "updating a Custom form" do
    visit custom_forms_url
    click_on "Edit", match: :first

    fill_in "Name", with: @custom_form.name
    fill_in "Published at", with: @custom_form.published_at
    fill_in "User", with: @custom_form.user_id
    click_on "Update Custom form"

    assert_text "Custom form was successfully updated"
    click_on "Back"
  end

  test "destroying a Custom form" do
    visit custom_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Custom form was successfully destroyed"
  end
end
