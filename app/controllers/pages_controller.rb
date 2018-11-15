class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @user_language = UserLanguage.new
  end
end
