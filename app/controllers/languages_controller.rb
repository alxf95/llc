class LanguagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  def index
    @languages = Language.all
  end

  def show
    @language = Language.find(params[:id])
  end

  private

  def languages_params
    params.require(:language).permit(:id)
  end
end
