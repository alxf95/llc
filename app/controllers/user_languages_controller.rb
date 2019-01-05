class UserLanguagesController < ApplicationController
  def index
  end

  def show
    @user_language = UserLanguage.find(params[@user_language])
  end

  def new
    @user_language = UserLanguage.new
    @language = Language.find(find_language.id)
  end

  def create
    @user_language = UserLanguage.new(user_language_params)
    @user_language.language = Language.find(find_language.id)
    @user_language.user = current_user
    if @user_language.save
      redirect_to edit_user_path(current_user)
    else
      render :new
    end
  end

  private

  def find_language
    Language.find(params["language_id"].to_i)
  end

  def user_language_params
    params.require(:user_language).permit(:user_level)
  end
end
