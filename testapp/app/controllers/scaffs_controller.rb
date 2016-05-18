class ScaffsController < ApplicationController
  before_action :set_scaff, only: [:show, :edit, :update, :destroy]

  # GET /scaffs
  # GET /scaffs.json
  def index
    @scaffs = Scaff.all
  end

  # GET /scaffs/1
  # GET /scaffs/1.json
  def show
  end

  # GET /scaffs/new
  def new
    @scaff = Scaff.new
  end

  # GET /scaffs/1/edit
  def edit
  end

  # POST /scaffs
  # POST /scaffs.json
  def create
    @scaff = Scaff.new(scaff_params)

    respond_to do |format|
      if @scaff.save
        format.html { redirect_to @scaff, notice: 'Scaff was successfully created.' }
        format.json { render :show, status: :created, location: @scaff }
      else
        format.html { render :new }
        format.json { render json: @scaff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scaffs/1
  # PATCH/PUT /scaffs/1.json
  def update
    respond_to do |format|
      if @scaff.update(scaff_params)
        format.html { redirect_to @scaff, notice: 'Scaff was successfully updated.' }
        format.json { render :show, status: :ok, location: @scaff }
      else
        format.html { render :edit }
        format.json { render json: @scaff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scaffs/1
  # DELETE /scaffs/1.json
  def destroy
    @scaff.destroy
    respond_to do |format|
      format.html { redirect_to scaffs_url, notice: 'Scaff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scaff
      @scaff = Scaff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scaff_params
      params.require(:scaff).permit(:article)
    end
end
