class UserLanguagesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @user_language = UserLanguage.new
  end

  def create
    raise
    @user_language = UserLanguage.new(language_id: params["id"].to_i)
    @user_language.user = current_user
    @user_language.language = @language
    @user_language.save
  end

  private

  def user_language_params
    params.require(:user_language).permit(:language_id)
  end
end
