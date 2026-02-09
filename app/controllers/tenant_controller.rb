class TenantController < ApplicationController
  def show
    @tenant = request.subdomain
  end

  def ping
    render json: {
      tenant: request.subdomain,
      message: "pong",
      csrf_token_received: request.headers["X-CSRF-Token"].present?
    }
  end
end
