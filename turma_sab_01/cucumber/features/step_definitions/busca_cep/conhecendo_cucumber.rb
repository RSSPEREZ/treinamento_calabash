# first
Dado(/^que estou aprendendo comandos$/) do
  @nome_cliente = Faker::Name.name
  @cpf = Faker::CPF.numeric
  @agencia = Faker::Base.numerify('####-#')
  @conta = Faker::Base.numerify('#####-#')
  puts 'O nome do cliente é ' + @nome_cliente
  puts 'O cpf do cliente é ' + @cpf
  puts 'A agencia do cliente é ' +@agencia
  puts 'A conta do cliente é ' + @conta
end

Quando(/^escrever os comandos$/) do
  sleep 02
end

Entao(/^vou executar$/) do
  @comandos = 'Uhullll'
  puts @comandos
end

# second

Dado(/^que eu escrevi os comandos$/) do
  puts 'Vai corinthians'
  sleep 05
end

Quando(/^eu executar$/) do
  @comandos_2
  puts @comandos_2
end

Entao(/^ele vai gerar uma expressão regular$/) do
  sleep 10
end

#third

Quando(/^eu vi as regex$/) do
  sleep 01
end

Entao(/^eu implementei os testes$/) do
  puts 'Eu agora sei implementar testes no cucumber'
end
