class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :shots, through: :shot_invites
  has_many :shot_invites
  has_many :memberships

  has_attached_file :picture,
                    styles: { medium: "300x300>", thumb: "100x100>" },
                    default_url: ':style/default-picture.png',
                    convert_options: {
                      thumb: "-background white -compose Copy -gravity center -extent 100x100",
                      medium: "-background white -compose Copy -gravity center -extent 300x300",
                    }

  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
  validates :email,    presence: true, uniqueness: true
  validates :name,     presence: true
  validates :password, presence: true
end
