require "test_helper"

class PacienteTest < ActiveSupport::TestCase

  test "salvar paciente com sucesso" do
    paciente = Paciente.new
    paciente.nome = "João da Silva"
    paciente.cpf = "12345678901"
    paciente.email = "joao@gmail.com"
    paciente.data = "2021-08-12"

    enderecos = Endereco.new
    enderecos.cep = "12345678"
    enderecos.cidade = "São Paulo"
    enderecos.bairro = "Centro"
    enderecos.logradoro = "Rua 1"
    enderecos.complemento = "Casa 1"

    paciente.endereco = enderecos
    assert paciente.save
  end

  test "salvar paciente sem nome" do
    paciente = Paciente.new
    paciente.nome = ""
    paciente.cpf = "12345678901"
    paciente.email = "teste@teste"
    paciente.data = "2021-08-12"

    enderecos = Endereco.new
    enderecos.cep = "12345678"
    enderecos.cidade = "São Paulo"
    enderecos.bairro = "Centro"
    enderecos.logradoro = "Rua 1"
    enderecos.complemento = "Casa 1"

    paciente.endereco = enderecos
    assert_not paciente.save
  end

end
