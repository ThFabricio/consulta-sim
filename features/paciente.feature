Feature: Paciente

  Scenario: cadastrar paciente
    Given que eu esteja na tela de cadastro de paciente
    When eu preencho os campos nome 'nome', data '2000-12-23', cpf '12345678900', email 'email@email', logradouro 'rua das ruas', bairro 'bairro', cidade 'cidade', complemento 'rua' e cep '11111111'
    And eu clicar em salvar
    Then o paciente deve ser cadastrado com sucesso

  Scenario: deletar paciente
    Given exite um paciente que tem nome 'nome', data '2000-12-23', cpf '12345678900', email 'email@email', logradouro 'rua das ruas', bairro 'bairro', cidade 'cidade', complemento 'rua' e cep '11111111'
    And eu esteja na tela de paciente
    And eu visualizo o paciente de cpf '12345678900'
    When eu clicar em deletar
    Then o paciente deve ser deletado com sucesso