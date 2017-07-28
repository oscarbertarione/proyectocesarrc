require 'test_helper'

class LeccionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @leccion = leccions(:one)
  end

  test "should get index" do
    get leccions_url
    assert_response :success
  end

  test "should get new" do
    get new_leccion_url
    assert_response :success
  end

  test "should create leccion" do
    assert_difference('Leccion.count') do
      post leccions_url, params: { leccion: { content: @leccion.content, curso_id: @leccion.curso_id, number: @leccion.number, summary: @leccion.summary, title: @leccion.title, video: @leccion.video } }
    end

    assert_redirected_to leccion_url(Leccion.last)
  end

  test "should show leccion" do
    get leccion_url(@leccion)
    assert_response :success
  end

  test "should get edit" do
    get edit_leccion_url(@leccion)
    assert_response :success
  end

  test "should update leccion" do
    patch leccion_url(@leccion), params: { leccion: { content: @leccion.content, curso_id: @leccion.curso_id, number: @leccion.number, summary: @leccion.summary, title: @leccion.title, video: @leccion.video } }
    assert_redirected_to leccion_url(@leccion)
  end

  test "should destroy leccion" do
    assert_difference('Leccion.count', -1) do
      delete leccion_url(@leccion)
    end

    assert_redirected_to leccions_url
  end
end
