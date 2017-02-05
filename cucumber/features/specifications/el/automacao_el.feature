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
  E preencho os dados principais
  E escolho a escolaridade
  E escolho a area de atuacao
  Então finalizo o cadastro


Cenario: Agendar uma entrevista

    Dado que eu acesse a home do aplicativo
    Quando eu clicar em Entrar
    E informar o telefone
    Então deverei ser direcionado para a tela de cadastro
    E preencho os campos iniciais
    E preencho os dados principais
    E escolho a escolaridade
    E escolho a area de atuacao
    E finalizo o cadastro
    E clico em procurar emprego
    E agendo uma entrevista
