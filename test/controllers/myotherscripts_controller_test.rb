require "test_helper"

class MyotherscriptsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @myotherscript = myotherscripts(:one)
  end

  test "should get index" do
    get myotherscripts_url
    assert_response :success
  end

  test "should get new" do
    get new_myotherscript_url
    assert_response :success
  end

  test "should create myotherscript" do
    assert_difference("Myotherscript.count") do
      post myotherscripts_url, params: { myotherscript: { description: @myotherscript.description, filename: @myotherscript.filename, title: @myotherscript.title, user_id: @myotherscript.user_id } }
    end

    assert_redirected_to myotherscript_url(Myotherscript.last)
  end

  test "should show myotherscript" do
    get myotherscript_url(@myotherscript)
    assert_response :success
  end

  test "should get edit" do
    get edit_myotherscript_url(@myotherscript)
    assert_response :success
  end

  test "should update myotherscript" do
    patch myotherscript_url(@myotherscript), params: { myotherscript: { description: @myotherscript.description, filename: @myotherscript.filename, title: @myotherscript.title, user_id: @myotherscript.user_id } }
    assert_redirected_to myotherscript_url(@myotherscript)
  end

  test "should destroy myotherscript" do
    assert_difference("Myotherscript.count", -1) do
      delete myotherscript_url(@myotherscript)
    end

    assert_redirected_to myotherscripts_url
  end
end
