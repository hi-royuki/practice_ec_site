Rails.application.routes.draw do

# ーーーーーー会員側のパス設定ーーーーー
  # skipオプションで対応付けをスキップする
  devise_for :customers, skip: [:registrations, :sessions, :passwords]
  # skipしたままだと利用できない。devise_scopeメソッドでパスを任意に指定する
  devise_scope :customer do
    get '/customers/sign_up', to: 'public/customers/registrations#new' # 新規登録
    post '/customers', to: 'public/customers/registrations#create'
    get '/customers/sign_in', to: 'public/customers/sessions#new' # ログイン
    post '/customers/sign_in', to: 'public/customers/sessions#create'
    delete '/customers/sign_out', to: 'piblic/customers/sessions#destroy' # ログアウト
  end
# ーーーーーーここまでーーーーーー

# ーーーーーー管理者側のパス設定ーーーーー
  devise_for :admins
  
# ーーーーーーここまでーーーーーー  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
