class MyotherscriptsController < ApplicationController
  before_action :set_myotherscript, only: %i[ show edit update destroy ]

  # GET /myotherscripts or /myotherscripts.json
  def index
    @myotherscripts = Myotherscript.all
  end

  # GET /myotherscripts/1 or /myotherscripts/1.json
  def show
  end

  # GET /myotherscripts/new
  def new
    @myotherscript = Myotherscript.new
  end

  # GET /myotherscripts/1/edit
  def edit
  end

  # POST /myotherscripts or /myotherscripts.json
  def create
    @myotherscript = Myotherscript.new(myotherscript_params)

    respond_to do |format|
      if @myotherscript.save
        format.html { redirect_to myotherscript_url(@myotherscript), notice: "Myotherscript was successfully created." }
        format.json { render :show, status: :created, location: @myotherscript }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @myotherscript.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myotherscripts/1 or /myotherscripts/1.json
  def update
    respond_to do |format|
      if @myotherscript.update(myotherscript_params)
        format.html { redirect_to myotherscript_url(@myotherscript), notice: "Myotherscript was successfully updated." }
        format.json { render :show, status: :ok, location: @myotherscript }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @myotherscript.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myotherscripts/1 or /myotherscripts/1.json
  def destroy
    @myotherscript.destroy

    respond_to do |format|
      format.html { redirect_to myotherscripts_url, notice: "Myotherscript was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myotherscript
      @myotherscript = Myotherscript.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def myotherscript_params
      params.require(:myotherscript).permit(:title, :description, :filename, :user_id)
    end
end
