class ApplicationController < ActionController::Base

# devise利用の機能（ユーザ登録、ログイン認証など）が使われる場合、その前にconfigure_permitted_parametersが実行される。
before_action :configure_permitted_parameters, if: :devise_controller?

protected
# configure_permitted_parametersでは、データ操作を許可するアクションメソッドが指定されています。
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :last_name_kana, :first_name_kana, :post_code, :prefecture_code, :city_code, :street, :other_address, :telephone_number])
  end


end
