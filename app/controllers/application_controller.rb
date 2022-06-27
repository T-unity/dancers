class ApplicationController < ActionController::Base
  # セッションのヘルパーをインクルード
  # https://railstutorial.jp/chapters/basic_login?version=5.1#sec-logging_in
  # 基底クラスであるApplicationControllerでインクルードする事で、全てのコントローラでこのモジュールを使用可能になる。
  include SessionsHelper
end
