Feature: Paciente

  Scenario: cadastrar paciente
    Given que eu esteja na tela de cadastro de paciente
    When eu preencho os campos nome 'nome', data '2000-12-23', cpf '12345678900', email 'email@email', logradouro 'rua das ruas', bairro 'bairro', cidade 'cidade', complemento 'rua' e cep '11111111'
    And eu clicar em salvar
    Then o paciente deve ser cadastrado com sucesso

  Scenario: deletar paciente
    Given que eu esteja na tela de cadastro de paciente
    And eu tenha um paciente cadastrado com cpf "12345678900"
    When eu clico no paciente com cpf "12345678900"
    And eu clico em deletar o paciente
    Then o paciente deve ser deletado com sucesso