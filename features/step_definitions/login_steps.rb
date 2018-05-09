Dado("que acesso o formulário de Login") do
    visit 'https://mark7.herokuapp.com'

  end
  
Quando("faço login com {string} e {string}") do |email, senha|
    find('#login_email').set email
    find('#login_password').set senha
    find('#button[id*=btnlogin').click
end
  
  Então("sou autenticado com sucesso") do
    expect(page).to have_content 'Bem vindo ao Mark7'
  end
  
  Dado("que acesso o formulário de login") do
    expect(page).to have_content mensagem
  end
