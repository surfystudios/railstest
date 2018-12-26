class AngelsController < ApplicationController
  before_action :set_angel, only: [:show, :edit, :update, :destroy]

  # GET /angels
  # GET /angels.json
  def index
    @angels = Angel.all
  end

  # GET /angels/1
  # GET /angels/1.json
  def show
  end

  # GET /angels/new
  def new
    @angel = Angel.new
  end

  # GET /angels/1/edit
  def edit
  end

  # POST /angels
  # POST /angels.json
  def create
    @angel = Angel.new(angel_params)

    respond_to do |format|
      if @angel.save
        format.html { redirect_to @angel, notice: 'Angel was successfully created.' }
        format.json { render :show, status: :created, location: @angel }
      else
        format.html { render :new }
        format.json { render json: @angel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /angels/1
  # PATCH/PUT /angels/1.json
  def update
    respond_to do |format|
      if @angel.update(angel_params)
        format.html { redirect_to @angel, notice: 'Angel was successfully updated.' }
        format.json { render :show, status: :ok, location: @angel }
      else
        format.html { render :edit }
        format.json { render json: @angel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /angels/1
  # DELETE /angels/1.json
  def destroy
    @angel.destroy
    respond_to do |format|
      format.html { redirect_to angels_url, notice: 'Angel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_angel
      @angel = Angel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def angel_params
      params.require(:angel).permit(:name, :wings)
    end
end
