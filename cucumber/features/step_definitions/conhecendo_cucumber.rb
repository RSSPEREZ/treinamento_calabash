# first
Dado(/^que estou aprendendo comandos$/) do
  puts 'Deu certo'
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
