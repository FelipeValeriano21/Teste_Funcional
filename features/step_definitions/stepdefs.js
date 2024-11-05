const assert = require('assert');
const { Given, When, Then } = require('@cucumber/cucumber');

Given('Que sou um usuário cadastrado com {string} e {string} e possuo nível de {string}', function (email, senha, nivel) {
  console.log(`Usuário cadastrado: ${email}, Senha: ${senha}, Nível: ${nivel}`);
  return 'passing';
});

Then('Exibe a mensagem {string}', function (mensagem) {
  console.log(mensagem);
  return 'pending';
});

When('Digito o {string}', function (texto) {
  console.log(`Digitando o: ${texto}`);
  return 'pending';
});

When('Digito a {string}', function (texto) {
  console.log(`Digitando a: ${texto}`);
  return 'pending';
});

Given('Tenho um curso cadastrado com nome {string}', function (nomeCurso) {
  console.log(`Curso cadastrado: ${nomeCurso}`);
  return 'pending';
});

When('Atualizo o curso para {string}', function (novoNomeCurso) {
  console.log(`Atualizando o curso para: ${novoNomeCurso}`);
  return 'pending';
});

When('Atualizo a descrição para {string}', function (novaDescricao) {
  console.log(`Atualizando a descrição para: ${novaDescricao}`);
  return 'pending';
});

When('Atualizo a categoria para {string}', function (novaCategoria) {
  console.log(`Atualizando a categoria para: ${novaCategoria}`);
  return 'pending';
});

When('Atualizo o nível para {string}', function (novoNivel) {
  console.log(`Atualizando o nível para: ${novoNivel}`);
  return 'pending';
});

When('Atualizo o link para {string}', function (novoLink) {
  console.log(`Atualizando o link para: ${novoLink}`);
  return 'pending';
});
