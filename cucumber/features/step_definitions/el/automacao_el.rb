Dado(/^que eu acesse a home do aplicativo$/) do
  wait_for_elements_exist("android.widget.Button marked:'ENTRAR'", :timeout => 10)
end

Quando(/^eu clicar em Entrar$/) do
  touch("* id:'btRegisteredUser'")
end

Quando(/^informar o telefone$/) do
  wait_for_elements_exist("android.widget.Button marked:'CONTINUAR'", :timeout => 10)
  query("* id:'etPhoneNumber'", setText: @phone_number)
  touch("* id:'btLoginWithPhone'")
end

Então(/^deverei ser direcionado para a tela de cadastro$/) do
  wait_for_elements_exist("android.widget.Button marked:'CONFIRMAR'", :timeout => 10)
end

Então(/^preencho os campos iniciais$/) do
  query("* id:'etPassword'", setText: @senha)
  query("* id:'etConfirmPassword'", setText: @senha)
  touch("* id:'btConfirm'")
  wait_for_elements_exist("android.widget.TextView marked:'PREENCHA SEUS DADOS'", :timeout => 10)
end

E (/^preencho os dados principais$/) do
  query("* id:'etName'", setText: @name)
  query("* id:'rbMale'", :setChecked=>true)
  query("* id:'etBirthDate'", setText: @data_aniversario)
  query("* id:'etEmail'", setText: @email)
  query("* id:'etCep'", setText: '04661-100')
  touch("* id:'btConfirm'")
  wait_for_elements_exist("android.widget.TextView marked:'CLIQUE EM SEU NÍVEL DE ESCOLARIDADE'", :timeout => 10)
end

E (/^escolho a escolaridade$/) do
  touch("* id:'tvConclusion' index:3")
end

E (/^escolho a area de atuacao$/) do
  touch("* id:'lblListHeader' index:3")
  touch("* id:'lblListItem' index:3")
end

Então (/^finalizo o cadastro$/) do
  touch("* id:'btFinish'")
end
