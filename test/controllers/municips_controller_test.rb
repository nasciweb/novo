require "test_helper"

class MunicipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @municip = municips(:one)
  end

  test "should get index" do
    get municips_url
    assert_response :success
  end

  test "should get new" do
    get new_municip_url
    assert_response :success
  end

  test "should create municip" do
    assert_difference("Municip.count") do
      post municips_url, params: { municip: { cns: @municip.cns, cpf: @municip.cpf, data: @municip.data, emailmunicipe: @municip.emailmunicipe, foto: @municip.foto, nascimento: @municip.nascimento, nome: @municip.nome, status: @municip.status, telefone: @municip.telefone } }
    end

    assert_redirected_to municip_url(Municip.last)
  end

  test "should show municip" do
    get municip_url(@municip)
    assert_response :success
  end

  test "should get edit" do
    get edit_municip_url(@municip)
    assert_response :success
  end

  test "should update municip" do
    patch municip_url(@municip), params: { municip: { cns: @municip.cns, cpf: @municip.cpf, data: @municip.data, emailmunicipe: @municip.emailmunicipe, foto: @municip.foto, nascimento: @municip.nascimento, nome: @municip.nome, status: @municip.status, telefone: @municip.telefone } }
    assert_redirected_to municip_url(@municip)
  end

  test "should destroy municip" do
    assert_difference("Municip.count", -1) do
      delete municip_url(@municip)
    end

    assert_redirected_to municips_url
  end
end
