#language: pt

Funcionalidade: Cadastrando de usuário

@dados_cadastrais
@cadastro_el
Cenario: Cadastro de novo usuário

  Dado que eu acesse a home do aplicativo
  Quando eu clicar em Entrar
  E informar o telefone
  Então deverei ser direcionado para a tela de cadastro
  E preencho os campos iniciais
