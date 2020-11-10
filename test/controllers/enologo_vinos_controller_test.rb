require 'test_helper'

class EnologoVinosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enologo_vino = enologo_vinos(:one)
  end

  test "should get index" do
    get enologo_vinos_url
    assert_response :success
  end

  test "should get new" do
    get new_enologo_vino_url
    assert_response :success
  end

  test "should create enologo_vino" do
    assert_difference('EnologoVino.count') do
      post enologo_vinos_url, params: { enologo_vino: { enologo_id: @enologo_vino.enologo_id, nota: @enologo_vino.nota, vino_id: @enologo_vino.vino_id } }
    end

    assert_redirected_to enologo_vino_url(EnologoVino.last)
  end

  test "should show enologo_vino" do
    get enologo_vino_url(@enologo_vino)
    assert_response :success
  end

  test "should get edit" do
    get edit_enologo_vino_url(@enologo_vino)
    assert_response :success
  end

  test "should update enologo_vino" do
    patch enologo_vino_url(@enologo_vino), params: { enologo_vino: { enologo_id: @enologo_vino.enologo_id, nota: @enologo_vino.nota, vino_id: @enologo_vino.vino_id } }
    assert_redirected_to enologo_vino_url(@enologo_vino)
  end

  test "should destroy enologo_vino" do
    assert_difference('EnologoVino.count', -1) do
      delete enologo_vino_url(@enologo_vino)
    end

    assert_redirected_to enologo_vinos_url
  end
end
