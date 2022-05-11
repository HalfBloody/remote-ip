Rails.application.routes.draw do
  root to: "ips#show"
  get :remote_ip, to: "ips#show", as: :remote_ip
end
