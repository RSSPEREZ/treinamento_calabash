require 'calabash-android/calabash_steps'

Dado(/^que eu acesso o console do calabash$/) do
  puts 'uhhullll'
end

Quando(/^eu reinstalar o app$/) do
  puts 'deu certo'
end

Quando(/^entrar em background do app$/) do
  puts 'aqui tmb'
end

Entao(/^eu consigo buscar elementos$/) do
  touch('android.widget.Button', id: 'btnCep')
  touch('android.widget.TextView')
  keyboard_enter_text("055433001")
  hide_soft_keyboard
  touch('android.widget.Button', id: 'btnChamaBuscaCEP')
  wait_for_elements_exist("android.widget.Button marked:'Buscar'", :timeout => 10)
  sleep 20
  @teste = query("android.widget.TextView id:'txtBC_cep'", :getText)
  puts @teste
end
