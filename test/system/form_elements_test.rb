require "application_system_test_case"

class FormElementsTest < ApplicationSystemTestCase
  setup do
    @form_element = form_elements(:one)
  end

  test "visiting the index" do
    visit form_elements_url
    assert_selector "h1", text: "Form Elements"
  end

  test "creating a Form element" do
    visit form_elements_url
    click_on "New Form Element"

    fill_in "Custom form", with: @form_element.custom_form_id
    fill_in "Input type", with: @form_element.input_type
    fill_in "Label", with: @form_element.label
    fill_in "Position", with: @form_element.position
    click_on "Create Form element"

    assert_text "Form element was successfully created"
    click_on "Back"
  end

  test "updating a Form element" do
    visit form_elements_url
    click_on "Edit", match: :first

    fill_in "Custom form", with: @form_element.custom_form_id
    fill_in "Input type", with: @form_element.input_type
    fill_in "Label", with: @form_element.label
    fill_in "Position", with: @form_element.position
    click_on "Update Form element"

    assert_text "Form element was successfully updated"
    click_on "Back"
  end

  test "destroying a Form element" do
    visit form_elements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Form element was successfully destroyed"
  end
end
