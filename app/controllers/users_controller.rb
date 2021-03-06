class UsersController < ApplicationController
  before_action :current_user_blank?, only: [:show, :logout]
  def index
    @users = User.all
  end

  
  def new
    @user = User.new
  end

  def create

    @user = User.new(users_params)
    if @user.save
      redirect_to  users_path(@user.id), notice: '新規会員登録完了しました。'
    else
      redirect_to root_path, alert: '新規会員登録に失敗しました。'
    end

  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  def logout
  end

  def deliber_address
  end

  def email_password
  end

  def identify
  end

  private
  # ユーザーがログインしていなければフロントへ
  def current_user_blank?
    if current_user.blank?
      redirect_to root_path
      flash[:alert] = 'ログインを行なってください。'
    end
  end

  def users_params
    params.require(:user).permit(:nickname,:first_name,:second_name,:email,:password,:hurigana_first,:hurigana_second,:birthday,:phone_number)
  end
end
