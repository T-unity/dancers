class Public::User < ApplicationRecord
  # before_save { self.email = self.email.downcase }
  # before_save { self.email = email.downcase }
  before_save { email.downcase! }
  # presence: trueはハッシュ（連想配列）だが、メソッドの最後の引数としてハッシュを渡す場合は波括弧が不要
  # オプションハッシュ
  validates :name, presence: true, length: { maximum: 50 }
  # 以下と同義
  # validates(:name, presence: true)
  # validates(:name, {presence: true} )
  # 大文字で始まる文字列はRubyでは定数を示す。
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true,
            length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX },
            # uniqueness: true
            uniqueness: { case_sensitive: false }
  # validates :password, presence: true, length: { minimum: 8 }
  # 開発用にパスワードの文字数制限を緩和
  validates :password, presence: true, length: { minimum: 4 }
  has_secure_password
end
