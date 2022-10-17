Feature: Medico

  Scenario: cadastrar medico
    Given que eu esteja na tela de cadastro de medico
    When eu preencher os campos com os dados do medico nome "Joao", crm "123456", email "joao@medico", cfp "12345678900" e especialidade "especialidade"
    And eu clicar no botao cadastrar
    Then o medico deve ser cadastrado com sucesso

  Scenario: deletar medico
    Given existe um Medico cujo nome é "Joao", crm "123456", email "joao@medico", cfp "12345678900" e especialidade "especialidade"
    And eu esteja na tela de medico
    And visualizo o medico de cpf "12345678900"
    When eu clico no botao deletar
    Then o medico deve ser deletado com sucesso