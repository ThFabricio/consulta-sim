require "test_helper"

class ConsultTest < ActiveSupport::TestCase

  test "criar consulta sem paciente" do
    consult = Consult.new
    consult.medico_id = 1
    consult.data = "2018-10-10"
    consult.horario = "10:00"
    assert_not consult.save, "Salvou consulta sem paciente"
  end

  test "criar consulta sem medico" do
    consult = Consult.new
    consult.paciente_id = 1
    consult.data = "2018-10-10"
    consult.horario = "10:00"
    assert_not consult.save, "Salvou consulta sem medico"
  end
end
