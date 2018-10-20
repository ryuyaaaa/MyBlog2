require "application_system_test_case"

class GsTest < ApplicationSystemTestCase
  setup do
    @g = gs(:one)
  end

  test "visiting the index" do
    visit gs_url
    assert_selector "h1", text: "Gs"
  end

  test "creating a G" do
    visit gs_url
    click_on "New G"

    fill_in "Comment", with: @g.comment
    fill_in "Name", with: @g.name
    fill_in "People", with: @g.people
    click_on "Create G"

    assert_text "G was successfully created"
    click_on "Back"
  end

  test "updating a G" do
    visit gs_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @g.comment
    fill_in "Name", with: @g.name
    fill_in "People", with: @g.people
    click_on "Update G"

    assert_text "G was successfully updated"
    click_on "Back"
  end

  test "destroying a G" do
    visit gs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "G was successfully destroyed"
  end
end
