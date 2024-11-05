Feature: Gerenciar cursos no AutoRating App
  Para registrar, editar e excluir cursos na plataforma, como um usuário cadastrado e gestor
  Quero poder inserir, alterar e realizar deleção lógica de cursos

  Background: Usuário cadastrado para gerenciar cursos
    Given Que sou um usuário cadastrado com "<email>" e "<senha>" e possuo nível de "<gestor>"

  Scenario Outline: Inserção de curso com campos em branco
    When Digito o "<nomedocurso>"
    And Digito a "<descricaodocurso>"
    And Digito a "<categoriadocurso>"
    And Digito a "<niveldocurso>"
    And Digito o "<linkdocurso>"
    Then Exibe a mensagem "<mensagem>"

    Examples:
      | email                     | senha | gestor | nomedocurso | descricaodocurso | categoriadocurso | niveldocurso | linkdocurso | mensagem                      |
      | Ayrton.Senna@example.com  | 1234  | gestor |             |                  |                  |              |             | Preencha todos os campos      |
      | Felipe.Reis@hotmail.com   | 8888  | gestor | Java Básico |                  | Desenvolvimento  | Iniciante    |             | Preencha todos os campos      |

  Scenario Outline: Inserção de curso com link inválido
    When Digito o "<nomedocurso>"
    And Digito a "<descricaodocurso>"
    And Digito a "<categoriadocurso>"
    And Digito a "<niveldocurso>"
    And Digito o "<linkdocurso>"
    Then Exibe a mensagem "<mensagem>"

    Examples:
      | email                    | senha | gestor | nomedocurso | descricaodocurso | categoriadocurso | niveldocurso | linkdocurso         | mensagem                      |
      | Ayrton.Senna@example.com | 1234  | gestor | Java Básico | Curso de Java    | Desenvolvimento  | Iniciante    | link_invalido       | Insira um link válido         |
      | Felipe.Reis@hotmail.com  | 8888  | gestor | Java Avanç. | Java avançado    | Desenvolvimento  | Avançado     | www.exemplo.com     | Insira um link válido         |

  Scenario Outline: Inserção de curso feita com sucesso
    When Digito o "<nomedocurso>"
    And Digito a "<descricaodocurso>"
    And Digito a "<categoriadocurso>"
    And Digito a "<niveldocurso>"
    And Digito o "<linkdocurso>"
    Then Exibe a mensagem "<mensagem>"

    Examples:
      | email                    | senha | gestor | nomedocurso   | descricaodocurso          | categoriadocurso | niveldocurso | linkdocurso              | mensagem                      |
      | Ayrton.Senna@example.com | 1234  | gestor | Java Básico   | Introdução ao Java        | Desenvolvimento  | Iniciante    | https://www.cursojava.com | Curso cadastrado com sucesso  |
      | Felipe.Reis@hotmail.com  | 8888  | gestor | Java Avançado | Conceitos avançados de Java | Desenvolvimento  | Avançado     | https://www.javaavanc.com | Curso cadastrado com sucesso  |

  Scenario Outline: Edição de curso existente
    Given Que sou um usuário cadastrado com "<email>" e "<senha>" e possuo nível de "<gestor>"
    And Tenho um curso cadastrado com nome "<nomedocurso>"
    When Atualizo o curso para "<novo_nomedocurso>"
    And Atualizo a descrição para "<nova_descricaodocurso>"
    And Atualizo a categoria para "<nova_categoriadocurso>"
    And Atualizo o nível para "<novo_niveldocurso>"
    And Atualizo o link para "<novo_linkdocurso>"
    Then Exibe a mensagem "<mensagem>"

    Examples:
      | email                    | senha | gestor | nomedocurso   | novo_nomedocurso | nova_descricaodocurso   | nova_categoriadocurso | novo_niveldocurso | novo_linkdocurso              | mensagem                      |
      | Ayrton.Senna@example.com | 1234  | gestor | Java Básico   | Java Intermediário | Curso de Java Intermediário | Desenvolvimento      | Intermediário     | https://www.cursojavainter.com | Curso atualizado com sucesso  |
      | Felipe.Reis@hotmail.com  | 8888  | gestor | Java Avançado | Java Pro         | Curso de Java para profissionais | Desenvolvimento  | Avançado           | https://www.javapro.com       | Curso atualizado com sucesso  |

  Scenario Outline: Deleção lógica de curso
    Given Que sou um usuário cadastrado com "<email>" e "<senha>" e possuo nível de "<gestor>"
    And Tenho um curso cadastrado com nome "<nomedocurso>"
    When Realizo a deleção lógica do curso "<nomedocurso>"
    Then Exibe a mensagem "<mensagem>"

    Examples:
      | email                    | senha | gestor | nomedocurso   | mensagem                    |
      | Ayrton.Senna@example.com | 1234  | gestor | Java Básico   | Curso excluído com sucesso  |
      | Felipe.Reis@hotmail.com  | 8888  | gestor | Java Avançado | Curso excluído com sucesso  |
