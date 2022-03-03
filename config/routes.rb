Rails.application.routes.draw do

  namespace :public do
    resources :items, only: [:index, :show]
    # get 'items/index'
    # get 'items/show'
  end
root to: 'public/homes/tops#top'

# ーーーーーー会員側のパス設定ーーーーー
  devise_for :customers, skip: [:registrations, :sessions] # skipオプションで対応付けをスキップする
  devise_scope :customer do # skipしたままだと利用できない。devise_scopeメソッドでパスを任意に指定する
    get 'customers/sign_up', to: 'public/customers/registrations#new', as: :new_customer_registration # 新規登録
    post '/customers/sign_up', to: 'public/customers/registrations#create', as: :customer_registration
    get '/customers/sign_in', to: 'public/customers/sessions#new', as: :new_customer_session # ログイン
    post '/customers/sign_in', to: 'public/customers/sessions#create', as: :customer_session
    delete '/customers/sign_out', to: 'public/customers/sessions#destroy', as: :destroy_customer_session # ログアウト

  end


# ーーーーーーここまでーーーーーー


# ーーーーーー管理者側のパス設定ーーーーー
  # devise_for :admins, skip: [:registrations, :passwords]
  # devise_scope :admins do
  #   get '/admins/sign_in', to: 'admins/sessions#new', as: :new_admins_session # ログイン
  #   post '/admins/sign_in', to: 'admins/sessions#create', as: :admins_session
  # end

  devise_for :admins, skip: [:registrations, :passwords], controllers: {
    sessions:      'admins/sessions'
  }

namespace :admins do
    resources :items, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  end
# ーーーーーーここまでーーーーーー
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
