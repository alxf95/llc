class LanguagesController < ApplicationController
  def index
    @languages = Language.all
  end

  def show
    @language = Language.find(params[:id])
    @user_language = UserLanguage.new(language_id: params["id"].to_i)
  end

  private

  def languages_params
    params.require(:language).permit(:id)
  end
end
