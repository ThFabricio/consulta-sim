require "test_helper"

class MedicoTest < ActiveSupport::TestCase

  test "salvar medico sem nome" do
    medico = Medico.new
    medico.nome = ""
    medico.crm = "12345678901"
    medico.especialidade = "Cardiologista"
    medico.email = "jao@jao"
    medico.cpf = "12345678901"

    assert_not medico.save

  end

  test "salvar medico sem crm" do
    medico = Medico.new
    medico.nome = "João da Silva"
    medico.crm = ""
    medico.especialidade = "Cardiologista"
    medico.email = "jao@jao"
    medico.cpf = "12345678901"

    assert_not medico.save

  end

end
