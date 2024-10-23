Feature: Cadastro de estudante

    Teste para cadastro de estudante no App 

Background: Criar cadastro invalido


Given que sou estudante
When deseja cadastrar no app memorinha

Scenario Outline: E-mail com formatação errada
And digito um email errado
Then o app envia a mensagem "E-mail deve conter a formatação correta"
 