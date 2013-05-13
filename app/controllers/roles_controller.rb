class RolesController < ApplicationController

  before_filter :find_role, except: [:index, :new, :create]

  def find_role
    @role = Role.find_by_id(params[:id])
  end

  def index
    @roles = Role.all
  end

  def show

  end

  def new
    @role = Role.new
  end

  def create
    @role = Role.new
    @role.character_name = params[:character_name]
    @role.actor_id = params[:actor_id]
    @role.movie_id = params[:movie_id]

    if @role.save
            redirect_to roles_url
          else
      render 'new'
    end
  end

  def edit
  end

  def update
    @role.character_name = params[:character_name]
    @role.actor_id = params[:actor_id]
    @role.movie_id = params[:movie_id]

    if @role.save
            redirect_to roles_url
          else
      render 'edit'
    end
  end

  def destroy
    @role.destroy
    redirect_to roles_url
  end
end
