class Public::User < ApplicationRecord
  # 仮想の属性を設定
  attr_accessor :remember_token

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
  validates :password, presence: true, length: { minimum: 8 }
  # 開発用にパスワードの文字数制限を緩和
  # validates :password, presence: true, length: { minimum: 4 }
  has_secure_password

  # def Public::User.digest( string )
  # def User.digest( string )
  def digest( string )
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  # def Public::User.new_token
  def generate_token
    SecureRandom.urlsafe_base64
  end

  def set_remember_token
    self.remember_token = generate_token
    update_attribute(:remember_digest, digest(remember_token))
  end

  def remove_remember_token
    update_attribute(:remember_digest, nil)
  end

  def authenticated?(remember_token)
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end

end
