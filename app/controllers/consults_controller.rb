class ConsultsController < ApplicationController
  before_action :set_consult, only: %i[ show edit update destroy ]

  # GET /consults or /consults.json
  def index
    @consults = Consult.all
    @medico = Medico.all.map{|medico| medico.nome}
    @paciente = Paciente.all.map{|paciente| paciente.nome}
    @medicoEspecialidade = Medico.all.map{|medico| medico.especialidade}
  end

  # GET /consults/1 or /consults/1.json
  def show

    @medico = Medico.all.map{|medico| medico.nome}
    @paciente = Paciente.all.map{|paciente| paciente.nome}
    @medicoEspecialidade = Medico.all.map{|medico| medico.especialidade}

  end

  # GET /consults/new
  def new
    @consult = Consult.new
    @pacientes = Paciente.all.map{|paciente| [paciente.nome, paciente.id]}
    @medicos = Medico.all.map{|medico| [medico.nome + medico.especialidade, medico.id]}
    @medicoEspecialidade = Medico.all.map{|medico| medico.especialidade}
  end

  # GET /consults/1/edit
  def edit
    @pacientes = Paciente.all.map{|paciente| [paciente.nome, paciente.id]}
    @medicos = Medico.all.map{|medico| [medico.nome + medico.especialidade, medico.id]}
    @medicoEspecialidade = Medico.all.map{|medico| medico.especialidade}
  end

  # POST /consults or /consults.json
  def create

    @consult = Consult.new(consult_params)
    @pacientes = Paciente.all.map{|paciente| [paciente.nome, paciente.id]}
    @medicos = Medico.all.map{|medico| [medico.nome + medico.especialidade, medico.id]}
    @medicoEspecialidade = Medico.all.map{|medico| medico.especialidade}

    respond_to do |format|
      if @consult.save
        format.html { redirect_to consult_url(@consult), notice: "Consult was successfully created." }
        format.json { render :show, status: :created, location: @consult }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @consult.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consults/1 or /consults/1.json
  def update

    @pacientes = Paciente.all.map{|paciente| [paciente.nome, paciente.id]}
    @medicos = Medico.all.map{|medico| [medico.nome + medico.especialidade, medico.id]}
    @medicoEspecialidade = Medico.all.map{|medico| medico.especialidade}

    respond_to do |format|
      if @consult.update(consult_params)
        format.html { redirect_to consult_url(@consult), notice: "Consult was successfully updated." }
        format.json { render :show, status: :ok, location: @consult }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @consult.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consults/1 or /consults/1.json
  def destroy
    @consult.destroy

    respond_to do |format|
      format.html { redirect_to consults_url, notice: "Consult was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consult
      @consult = Consult.find(params[:id])
      @medico = Medico.all.map{|medico| medico.nome}
      @medicoEspecialidade = Medico.all.map{|medico| medico.especialidade}
      @paciente = Paciente.all.map{|paciente| paciente.nome}
    end

    # Only allow a list of trusted parameters through.
    def consult_params
      params.require(:consult).permit(:data, :horario, :paciente_id, :medico_id)
    end
end
