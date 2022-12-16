require "application_system_test_case"

class MunicipsTest < ApplicationSystemTestCase
  setup do
    @municip = municips(:one)
  end

  test "visiting the index" do
    visit municips_url
    assert_selector "h1", text: "Municips"
  end

  test "should create municip" do
    visit municips_url
    click_on "New municip"

    fill_in "Cns", with: @municip.cns
    fill_in "Cpf", with: @municip.cpf
    fill_in "Data", with: @municip.data
    fill_in "Emailmunicipe", with: @municip.emailmunicipe
    fill_in "Foto", with: @municip.foto
    fill_in "Nascimento", with: @municip.nascimento
    fill_in "Nome", with: @municip.nome
    fill_in "Status", with: @municip.status
    fill_in "Telefone", with: @municip.telefone
    click_on "Create Municip"

    assert_text "Municip was successfully created"
    click_on "Back"
  end

  test "should update Municip" do
    visit municip_url(@municip)
    click_on "Edit this municip", match: :first

    fill_in "Cns", with: @municip.cns
    fill_in "Cpf", with: @municip.cpf
    fill_in "Data", with: @municip.data
    fill_in "Emailmunicipe", with: @municip.emailmunicipe
    fill_in "Foto", with: @municip.foto
    fill_in "Nascimento", with: @municip.nascimento
    fill_in "Nome", with: @municip.nome
    fill_in "Status", with: @municip.status
    fill_in "Telefone", with: @municip.telefone
    click_on "Update Municip"

    assert_text "Municip was successfully updated"
    click_on "Back"
  end

  test "should destroy Municip" do
    visit municip_url(@municip)
    click_on "Destroy this municip", match: :first

    assert_text "Municip was successfully destroyed"
  end
end
