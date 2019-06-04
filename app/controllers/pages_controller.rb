class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @plots = Plot.last(6)
  end
end
