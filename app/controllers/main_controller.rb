class MainController < ApplicationController
  def index
    @subdomain = request.subdomain.presence || "(none)"
  end
end
