require "application_system_test_case"

class MyotherscriptsTest < ApplicationSystemTestCase
  setup do
    @myotherscript = myotherscripts(:one)
  end

  test "visiting the index" do
    visit myotherscripts_url
    assert_selector "h1", text: "Myotherscripts"
  end

  test "should create myotherscript" do
    visit myotherscripts_url
    click_on "New myotherscript"

    fill_in "Description", with: @myotherscript.description
    fill_in "Filename", with: @myotherscript.filename
    fill_in "Title", with: @myotherscript.title
    fill_in "User", with: @myotherscript.user_id
    click_on "Create Myotherscript"

    assert_text "Myotherscript was successfully created"
    click_on "Back"
  end

  test "should update Myotherscript" do
    visit myotherscript_url(@myotherscript)
    click_on "Edit this myotherscript", match: :first

    fill_in "Description", with: @myotherscript.description
    fill_in "Filename", with: @myotherscript.filename
    fill_in "Title", with: @myotherscript.title
    fill_in "User", with: @myotherscript.user_id
    click_on "Update Myotherscript"

    assert_text "Myotherscript was successfully updated"
    click_on "Back"
  end

  test "should destroy Myotherscript" do
    visit myotherscript_url(@myotherscript)
    click_on "Destroy this myotherscript", match: :first

    assert_text "Myotherscript was successfully destroyed"
  end
end
