class User < ActiveRecord::Base
	has_many :authentications
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>", :profile => "200x200>" }


	def password_required?
  		(authentications.empty? || !password.blank?) && super
	end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :projects

  validates :name, presence: true
  def apply_omniauth(omniauth)
  	authentications.build(:provider => omniauth['provider'], :uid => omniauth['uid'])
  	
  end
end
