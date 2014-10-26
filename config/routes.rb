Rails.application.routes.draw do
  authenticate :user, -> user { user.admin? } do
    mount RailsAdmin::Engine, at: '/admin', as: 'rails_admin'
  end

  devise_for :users

  get 'donate', to: 'pages#donate'
  get 'fundraising', to: 'pages#fundraising'
  get 'home', to: 'pages#index'
  get 'programming', to: 'pages#programming'
  get 'staff_students', to: 'pages#staff_students'
  get 'success_stories', to: 'pages#success_stories'
  get 'values', to: 'pages#values'
  get 'volunteering_partnerships', to: 'pages#volunteering_partnerships'

  get 'search', to: 'search#index'

  root to: 'pages#index'
end
