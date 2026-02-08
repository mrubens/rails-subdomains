Rails.application.routes.draw do
  # Health check
  get "up" => "rails/health#show", as: :rails_health_check

  # Admin subdomain - specific constraint
  constraints subdomain: "admin" do
    get "/", to: "admin#dashboard", as: :admin_root
  end

  # API subdomain - specific constraint
  constraints subdomain: "api" do
    get "/", to: "api#status", as: :api_root
    get "/status", to: "api#status"
  end

  # Wildcard subdomain for tenants (any subdomain not matching above)
  # Must come after specific subdomain constraints
  constraints subdomain: /.+/ do
    get "/", to: "tenant#show", as: :tenant_root
  end

  # Main site (no subdomain) - this is the default root
  root "main#index"
end
