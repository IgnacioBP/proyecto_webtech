class AllUsersController < ApplicationController
  before_action :set_all_user, only: %i[ show edit update destroy ]

  # GET /all_users or /all_users.json
  def index
    @all_users = AllUser.all
  end

  # GET /all_users/1 or /all_users/1.json
  def show
  end

  # GET /all_users/new
  def new
    @all_user = AllUser.new
  end

  # GET /all_users/1/edit
  def edit
  end

  # POST /all_users or /all_users.json
  def create
    @all_user = AllUser.new(all_user_params)

    respond_to do |format|
      if @all_user.save
        format.html { redirect_to all_user_url(@all_user), notice: "All user was successfully created." }
        format.json { render :show, status: :created, location: @all_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @all_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /all_users/1 or /all_users/1.json
  def update
    respond_to do |format|
      if @all_user.update(all_user_params)
        format.html { redirect_to all_user_url(@all_user), notice: "All user was successfully updated." }
        format.json { render :show, status: :ok, location: @all_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @all_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /all_users/1 or /all_users/1.json
  def destroy
    @all_user.destroy

    respond_to do |format|
      format.html { redirect_to all_users_url, notice: "All user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_all_user
      @all_user = AllUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def all_user_params
      params.fetch(:all_user, {})
    end
end
