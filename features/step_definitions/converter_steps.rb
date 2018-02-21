# encoding: utf-8

Dado("que estou com o app aberto") do
 
end

Quando("eu mudo de medida") do
  find_element(:id, "select_unit_spinner_arrow").click
  itens = find_elements(:id, "select_unit_spinner_menu_name")
  #item  = find_element(:xpath, './/*[contains(., "Foot")]')
  #Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.7, offset_x: 0.7, offset_y: 0.1, duration: 1200).perform
  Appium::TouchAction.new.swipe(start_x:100, start_y:300, end_x:300, end_y:100, duration:2000).perform
  Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.1, offset_x: 0.7, offset_y: 18, duration: 1200).perform
  item = find_elements(:id, 'select_unit_spinner_menu_name').select {|el| el.text == 'Meter'}.first
  item.click
  puts "*************************"
  #puts itens
  puts "*************************"
  sleep(2)
end