Dado(/^que eu acesse a home do aplicativo$/) do
  wait_for_elements_exist("android.widget.Button marked:'ENTRAR'", :timeout => 10)
end

Quando(/^eu clicar em Entrar$/) do
  touch("* id:'btRegisteredUser'")
end

Quando(/^informar o telefone$/) do
  wait_for_elements_exist("android.widget.Button marked:'CONTINUAR'", :timeout => 10)
  query("* id:'etPhoneNumber'", setText: Faker::Base.numerify("119########"))
  touch("* id:'btLoginWithPhone'")
end

Então(/^deverei ser direcionado para a tela de cadastro$/) do
  wait_for_elements_exist("android.widget.Button marked:'CONFIRMAR'", :timeout => 10)
end

Então(/^preencho os campos iniciais$/) do
  @senha = Faker::Base.numerify("inicial####")
  query("* id:'etPassword'", setText: @senha)#Faker::Base.numerify("inicial####"))
  query("* id:'etConfirmPassword'", setText: @senha)#Faker::Base.numerify("inicial####"))
  touch("* id:'btConfirm'")
  wait_for_elements_exist("android.widget.TextView marked:'PREENCHA SEUS DADOS'", :timeout => 10)
end
