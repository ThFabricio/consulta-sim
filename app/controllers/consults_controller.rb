class ConsultsController < ApplicationController

  def create

    @paciente = Paciente.find(params[ :paciente_id])
    @consult = @paciente.consults.create(consult_params)
    redirect_to paciente_path(@paciente)
  end

  def destroy

    @paciente = Paciente.find(params[:paciente_id])
    @consult = @paciente.consults.find(params[:id])
    @consult.destroy
    redirect_to paciente_path(@paciente), status: 303

  end

  private
    def consult_params

      params.require(:consult).permit(:data, :horario, :medico_id)
    end

end
