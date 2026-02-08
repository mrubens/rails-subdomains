class TenantController < ApplicationController
  def show
    @tenant = request.subdomain
  end
end
