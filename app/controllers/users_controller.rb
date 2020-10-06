class UsersController < ApiController
    before_action :require_login, except: [:create]
# auth was a mistake
    def create
        user = User.create!(user_params)
        render json: { token: user.auth_token }
    end

    def profile
        user = User.find_by!(auth_token: request.headers[:token])
        render json: { user: { username: user.username, email: user.email, password: user.password } }
    end
    private
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end
