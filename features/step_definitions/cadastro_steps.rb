  Dado("que acesso o meu perfil") do
    @nav.menu_usuario.click
    @nav.meu_perfil.click
  end
  
  Quando("completo o meu cadastro com os seguintes valores:") do |table|
    @perfil_page.completa(table.rows_hash)
  end
  
  Então("devo ver a seguinte mensagem {string}") do |mensagem|
    expect(page).to have_content mensagem
  end