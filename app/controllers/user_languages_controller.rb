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
    @user_language = UserLanguage.new(language: Language.find(find_language.id), user: current_user)
    if @user_language.save
      redirect_to language_path(@user_language.language)
    else
      render :new
    end
  end

  private

  def find_language
    Language.find(params["language_id"].to_i)
  end

  def user_language_params
    params.require(:user_language).permit(:id)
  end
end
