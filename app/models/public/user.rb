class Public::User < ApplicationRecord
  # presence: trueはハッシュ（連想配列）だが、メソッドの最後の引数としてハッシュを渡す場合は波括弧が不要
  # オプションハッシュ
  validates :name, presence: true
  # 以下と同義
  # validates(:name, presence: true)
  # validates(:name, {presence: true} )
end
