class LanguagesController < ApplicationController
  def index
    @languages = Language.all
  end

  def show
    @language = Language.find(params[:id])
    # @user_language = UserLanguage.new(language_id: @language.id.to_i)
    # @user_language.user = current_user
    # @user_language.save
  end

  private

  def languages_params
    params.require(:language).permit(:id)
  end
end
