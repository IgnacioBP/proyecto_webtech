class AllUsersController < ApplicationController
  before_action :set_all_user, only: %i[ show edit update destroy ]

  # GET /all_users or /all_users.json
  def index
    @all_users = AllUser.all
  end

  # GET /all_users/1 or /all_users/1.json
  def show
    redirect_to all_users_url
  end

  # GET /all_users/new
  def new
    redirect_to all_users_url
  end

  # GET /all_users/1/edit
  def edit
    redirect_to all_users_url
  end

  # POST /all_users or /all_users.json
  def create
    redirect_to all_users_url
  end

  # PATCH/PUT /all_users/1 or /all_users/1.json
  def update
    redirect_to all_users_url
  end

  # DELETE /all_users/1 or /all_users/1.json
  def destroy
    redirect_to all_users_url
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
