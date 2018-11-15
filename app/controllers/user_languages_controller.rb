class UserLanguagesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @user_language = UserLanguage.new
  end

  def create
    @user_language = UserLanguage.new(user_language_params)
    @user_language.save
  end

  private

  def user_language_params
    params.require(:user_language).permit(:language_id)
  end
end
