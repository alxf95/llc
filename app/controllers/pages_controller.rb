class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about]

  def home
    @user_language = UserLanguage.new
  end

  def about
  end

end
