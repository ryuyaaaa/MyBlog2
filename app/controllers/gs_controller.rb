class GsController < ApplicationController
  before_action :set_g, only: [:show, :edit, :update, :destroy]

  # GET /gs
  # GET /gs.json
  def index
    @gs = G.all
  end

  # GET /gs/1
  # GET /gs/1.json
  def show
  end

  # GET /gs/new
  def new
    @g = G.new
  end

  # GET /gs/1/edit
  def edit
  end

  # POST /gs
  # POST /gs.json
  def create
    @g = G.new(g_params)

    respond_to do |format|
      if @g.save
        format.html { redirect_to @g, notice: 'G was successfully created.' }
        format.json { render :show, status: :created, location: @g }
      else
        format.html { render :new }
        format.json { render json: @g.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gs/1
  # PATCH/PUT /gs/1.json
  def update
    respond_to do |format|
      if @g.update(g_params)
        format.html { redirect_to @g, notice: 'G was successfully updated.' }
        format.json { render :show, status: :ok, location: @g }
      else
        format.html { render :edit }
        format.json { render json: @g.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gs/1
  # DELETE /gs/1.json
  def destroy
    @g.destroy
    respond_to do |format|
      format.html { redirect_to gs_url, notice: 'G was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_g
      @g = G.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def g_params
      params.require(:g).permit(:people, :name, :comment)
    end
end
