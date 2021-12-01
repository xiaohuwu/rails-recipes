class Admin::UsersController < ApplicationController

    before_action :authenticate_user!
    before_action :find_user, except: [:index]

    def index
        @users = User.all.includes(:groups)
    end

    def show

    end

    def edit
        @user.create_profile unless @user.profile
    end

    def update
        if @user.update!(params.permit!)
            redirect_to admin_users_path
        else
            render "edit"
        end
    end

    protected

    def user_params
        params.require(:user).permit(:email, :group_ids => [], :profile_attributes => [:id, :legal_name, :birthday, :location, :education, :occupation, :bio, :specialty])
    end

    def find_user
        @user = User.find(params[:id])
    end
end
