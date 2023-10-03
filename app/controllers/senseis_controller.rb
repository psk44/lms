class SenseisController < ApplicationController
  before_action :set_sensei, only: %i[ show edit update destroy ]

  # GET /senseis or /senseis.json
  def index
    @senseis = Sensei.all
  end

  # GET /senseis/1 or /senseis/1.json
  def show
  end

  # GET /senseis/new
  def new
    @sensei = Sensei.new
  end

  # GET /senseis/1/edit
  def edit
  end

  # POST /senseis or /senseis.json
  def create
    @sensei = Sensei.new(sensei_params)

    respond_to do |format|
      if @sensei.save
        format.html { redirect_to sensei_url(@sensei), notice: "Sensei was successfully created." }
        format.json { render :show, status: :created, location: @sensei }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sensei.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /senseis/1 or /senseis/1.json
  def update
    respond_to do |format|
      if @sensei.update(sensei_params)
        format.html { redirect_to sensei_url(@sensei), notice: "Sensei was successfully updated." }
        format.json { render :show, status: :ok, location: @sensei }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sensei.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /senseis/1 or /senseis/1.json
  def destroy
    @sensei.destroy

    respond_to do |format|
      format.html { redirect_to senseis_url, notice: "Sensei was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sensei
      @sensei = Sensei.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sensei_params
      params.require(:sensei).permit(:first_name, :last_name, :bio)
    end
end
