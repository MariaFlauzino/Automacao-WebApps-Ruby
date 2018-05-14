Before do
  @login_page = LoginPage.new
  @nav = NavBar.new
  @perfil_page = PerfilPage.new
end

Before('@login') do
  @login_page.load
  @login_page.logar('eu@papito.io','123456')
end

After('@logout') do
  @nav.menu_usuario.click
  @nav.logout.click

  # somente dentro do escopo navbar os elementos são buscados
  #within('.navbar') do
  #  find('a[href*="user_settings dropdown"]').click
  #  find('a[href$="logout"]').
  #end
end

After do |scenario|
  nome_cenario = scenario.name.tr(' ','_').downcase!
  screenshot = "log/screenshots/#{nome_cenario}.png"
  page.save_screenshot(screenshot)
  embed(screenshot, 'image/png','Clique aqui para ver a evidência.')
end