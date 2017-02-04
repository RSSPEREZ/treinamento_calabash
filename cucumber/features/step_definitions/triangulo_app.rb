Dado(/^que eu informo o lado um$/) do
  sleep 05
  wait_for_elements_exist("android.widget.Button marked:'Calcular'", :timeout => 10)
  query("* id:'txtLado1'", setText: @lado_1)
end

Dado(/^informar o lado dois$/) do
  query("* id:'txtLado2'", setText: @lado_2)
end

Dado(/^informar o lado tres$/) do
  query("* id:'txtLado3'", setText: @lado_3)
end

Quando(/^eu clicar em Calcular$/) do
  sleep 10
  touch("* id:'btnCalcular'")
  sleep 10
end

Entao(/^deverá mostrar o tipo de triângulo$/) do
  check_element_exists("*id:'txtResultado' marked:'#{query("* id:'txtResultado'", :getText)[0]}'")
end
