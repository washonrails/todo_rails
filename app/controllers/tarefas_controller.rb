class TarefasController < ApplicationController
  before_action :set_tarefa, only: %i[ update destroy ]

  # GET /tarefas or /tarefas.json
  def index
    @tarefas = Tarefa.all
  end

  # GET /tarefas/1 or /tarefas/1.json
  def show
  end

  # GET /tarefas/new
  def new
    @tarefa = Tarefa.new
  end

  # GET /tarefas/1/edit
  def edit
  end

  # POST /tarefas or /tarefas.json
  def create
    @tarefa = Tarefa.new(tarefa_params)
    @tarefa.save

    redirect_to tarefas_url
  end

  # PATCH/PUT /tarefas/1 or /tarefas/1.json
  def update
    @tarefa.resolvida = !@tarefa.resolvida
    @tarefa.save

    redirect_to tarefas_url
  end

  # DELETE /tarefas/1 or /tarefas/1.json
  def destroy
    @tarefa.destroy
    
    redirect_to tarefas_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tarefa
      @tarefa = Tarefa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tarefa_params
      params.require(:tarefa).permit(:nome, :resolvida)
    end
end
