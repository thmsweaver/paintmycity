class User < ActiveRecord::Base

  # user can have many compositions that should be destroyed with user
  has_many :compositions, dependent: :destroy

  # add handlers to run when creating and saving:
  before_create :create_remember_token
  before_save :normalize_fields

  # validate name:
  validates :name,
    presence: true,
    length: {  maximum:50 }

  # validate email address:
  validates :email,
    presence: true,
    uniqueness: { case_sensitive: false },
    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }

  # secure password features:
  has_secure_password

  # question: why are the below two methods not implied by has_secure_password?

  # create a new remember token for a user:
  # question: why are these not in the controller?
  # question: what is all this doing under the hood?
  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  # hash a remember token:
  # question: does the hash methods come from has_secure_password?
  def User.hash(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

  # create a new session token for the user:
  # question: does the remember_token method come from has_secure_password?
  def create_remember_token
    self.remember_token = User.hash(User.new_remember_token)
  end

  # normalize fields for consistency:
  def normalize_fields
    self.email.downcase!
  end

end
