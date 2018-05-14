Dado('que acesso o formulário de Login') do
  @login_page.load
end

Quando('faço login com {string} e {string}') do |email, senha|
  @login_page.logar(email,senha)
end

Então('sou autenticado com sucesso') do
  expect(page).to have_content 'Bem vindo ao Mark7'
end

Dado('devo ver a mensagem de alerta {string}') do |mensagem_alerta|
  expect(page).to have_content mensagem_alerta
end
