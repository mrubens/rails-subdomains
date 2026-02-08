class AdminController < ApplicationController
  def dashboard
    @subdomain = request.subdomain
  end
end
