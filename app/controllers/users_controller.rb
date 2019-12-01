class UsersController < ApplicationController
  #新規作成画面に対応するアクション
  def new
  #↓Userクラスの「オブジェクト」を作った
    @user = User.new
  end
  #新規登録するためのアクション
  def create
    User.create(user_params)
  end
  #一覧画面に対応するアクション
  def index
    @users = User.all
  end
  #削除をするためのアクション
  def destroy
    user = User.find(params[:id])
    user.delete
  end
  #編集画面に対応するためのアクション
  def edit
    @user = User.find(params[:id])
  end
  #更新を行うためのアクション
  def update
    user = User.find(params[:id])
    user.update(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:name, :age)
  end
  def user_params
    params.require(:user).permit(:name, :age)
  end

end
