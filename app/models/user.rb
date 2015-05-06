class User < ActiveRecord::Base
  authenticates_with_sorcery!

  before_create do
    begin
      self.token = SecureRandom.hex
    end while self.class.exists?(token: token)
  end


  validates :password, length: { minimum: 5 }, if: :password
  validates :password, confirmation: true, if: :password
  validates :password_confirmation, presence: true, if: :password

  validates :username, uniqueness: true, length: {minimum: 2}

  has_many :items
  has_many :votes
  has_many :item_comments

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def item_votes
    votes.where(votable_type: "Item")
  end

  def to_param
    username.downcase
  end

  def username
    disabled? ? "[deleted]" : read_attribute(:username)
  end

end
