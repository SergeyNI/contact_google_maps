Rails.application.routes.draw do
  get 'markers/index'
  root 'contact#index'
  ActiveAdmin::Devise.config[:controllers][:sessions] = 'admin/sessions'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Rails.application.routes.draw do
  #   devise_for :users, controllers: {
  #     sessions: 'users/sessions'
  #   }
  # end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
