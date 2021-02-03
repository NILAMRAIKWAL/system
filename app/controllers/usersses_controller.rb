class UserssesController < ApplicationController
  before_action :set_userss, only: [:show, :edit, :update, :destroy]

  # GET /usersses
  # GET /usersses.json
  def index
    @usersses = Userss.all
  end

  # GET /usersses/1
  # GET /usersses/1.json
  def show
  end

  # GET /usersses/new
  def new
    @userss = Userss.new
  end

  # GET /usersses/1/edit
  def edit
  end

  # POST /usersses
  # POST /usersses.json
  def create
    @userss = Userss.new(userss_params)

    respond_to do |format|
      if @userss.save
        format.html { redirect_to @userss, notice: 'Userss was successfully created.' }
        format.json { render :show, status: :created, location: @userss }
      else
        format.html { render :new }
        format.json { render json: @userss.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usersses/1
  # PATCH/PUT /usersses/1.json
  def update
    respond_to do |format|
      if @userss.update(userss_params)
        format.html { redirect_to @userss, notice: 'Userss was successfully updated.' }
        format.json { render :show, status: :ok, location: @userss }
      else
        format.html { render :edit }
        format.json { render json: @userss.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usersses/1
  # DELETE /usersses/1.json
  def destroy
    @userss.destroy
    respond_to do |format|
      format.html { redirect_to usersses_url, notice: 'Userss was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userss
      @userss = Userss.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def userss_params
      params.require(:userss).permit(:name, :mobile, :email, :password, :password_confirmation, :address)
    end
end
