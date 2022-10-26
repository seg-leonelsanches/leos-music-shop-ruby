class TurntablesController < ApplicationController
  before_action :set_turntable, only: %i[ show edit update destroy ]

  # GET /turntables or /turntables.json
  def index
    Analytics.identify(
      user_id: '019mr8mf4r',
      traits: { email: "#{ 'valued.dj@segment.com' }", friends: 872 },
      context: {ip: '8.8.8.8'})
    @turntables = Turntable.all
  end

  # GET /turntables/1 or /turntables/1.json
  def show
  end

  # GET /turntables/new
  def new
    @turntable = Turntable.new
  end

  # GET /turntables/1/edit
  def edit
  end

  # POST /turntables or /turntables.json
  def create
    @turntable = Turntable.new(turntable_params)

    respond_to do |format|
      if @turntable.save
        format.html { redirect_to turntable_url(@turntable), notice: "Turntable was successfully created." }
        format.json { render :show, status: :created, location: @turntable }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @turntable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /turntables/1 or /turntables/1.json
  def update
    respond_to do |format|
      if @turntable.update(turntable_params)
        format.html { redirect_to turntable_url(@turntable), notice: "Turntable was successfully updated." }
        format.json { render :show, status: :ok, location: @turntable }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @turntable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /turntables/1 or /turntables/1.json
  def destroy
    @turntable.destroy

    respond_to do |format|
      format.html { redirect_to turntables_url, notice: "Turntable was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_turntable
      @turntable = Turntable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def turntable_params
      params.require(:turntable).permit(:model, :manufacturer, :price, :main_image)
    end
end
