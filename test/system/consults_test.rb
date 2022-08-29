require "application_system_test_case"

class ConsultsTest < ApplicationSystemTestCase
  setup do
    @consult = consults(:one)
  end

  test "visiting the index" do
    visit consults_url
    assert_selector "h1", text: "Consults"
  end

  test "should create consult" do
    visit consults_url
    click_on "New consult"

    fill_in "Data", with: @consult.data
    fill_in "Horario", with: @consult.horario
    click_on "Create Consult"

    assert_text "Consult was successfully created"
    click_on "Back"
  end

  test "should update Consult" do
    visit consult_url(@consult)
    click_on "Edit this consult", match: :first

    fill_in "Data", with: @consult.data
    fill_in "Horario", with: @consult.horario
    click_on "Update Consult"

    assert_text "Consult was successfully updated"
    click_on "Back"
  end

  test "should destroy Consult" do
    visit consult_url(@consult)
    click_on "Destroy this consult", match: :first

    assert_text "Consult was successfully destroyed"
  end
end
