require 'test_helper'

class ApuntesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apunte = apuntes(:one)
  end

  test "should get index" do
    get apuntes_url
    assert_response :success
  end

  test "should get new" do
    get new_apunte_url
    assert_response :success
  end

  test "should create apunte" do
    assert_difference('Apunte.count') do
      post apuntes_url, params: { apunte: { content: @apunte.content, leccion_id: @apunte.leccion_id } }
    end

    assert_redirected_to apunte_url(Apunte.last)
  end

  test "should show apunte" do
    get apunte_url(@apunte)
    assert_response :success
  end

  test "should get edit" do
    get edit_apunte_url(@apunte)
    assert_response :success
  end

  test "should update apunte" do
    patch apunte_url(@apunte), params: { apunte: { content: @apunte.content, leccion_id: @apunte.leccion_id } }
    assert_redirected_to apunte_url(@apunte)
  end

  test "should destroy apunte" do
    assert_difference('Apunte.count', -1) do
      delete apunte_url(@apunte)
    end

    assert_redirected_to apuntes_url
  end
end
