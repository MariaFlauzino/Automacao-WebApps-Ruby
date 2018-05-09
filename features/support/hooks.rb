
After('@logout') do
  find('a[href*="user_settings dropdown"]').click
  find('a[href$="logout"]').click
end
