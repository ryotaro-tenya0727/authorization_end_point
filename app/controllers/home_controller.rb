class HomeController < ApplicationController
  #追記
  before_action :authenticate_user!, only: :index

  def index
  end
end
