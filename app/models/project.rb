class Project < ActiveRecord::Base
	belongs_to :user

	validates :description, :url, :github, presence: true

end
