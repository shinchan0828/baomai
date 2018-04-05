class UsersController < ApplicationController
  
  def show
    @user = User.find(current_user.id)
  end
  
  def new
    @user = User.new
  end
  
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: "登録が完了しました"
    else
      flash.now[:alert] = "登録に失敗しました"
      render :new
    end
  end
  
  def edit
    @user = User.find(current_user.id)
  end
  
  def update
    @user = User.find(params[:id])
    
    if @user.update(user_params)
      flash[:success] = 'プロフィールは更新されました'
      redirect_to @user
    else
      logger.debug("エラー内容は下記")
      logger.debug(@user.errors.messages)
      flash.now[:alert] = 'プロフィールは更新されませんでした'
      render :edit
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :image, :profile, :password, :password_confirmation, :seller_flag, :buyer_flag)
  end
end
