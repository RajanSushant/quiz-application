Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :admin_users, path: 'admin', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}

  namespace :admin do
    get '/', to: 'dashboards#show', as: :dashboard
  end
end
