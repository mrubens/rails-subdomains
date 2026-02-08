class ApiController < ApplicationController
  def status
    render json: {
      subdomain: request.subdomain,
      status: "ok",
      message: "API is running on the api subdomain"
    }
  end
end
