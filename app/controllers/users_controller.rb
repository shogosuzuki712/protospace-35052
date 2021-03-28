class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @prototypes = Prototype.all
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile, :occupation, :position).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end

end
