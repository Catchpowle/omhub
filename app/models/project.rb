class Project < ActiveRecord::Base
	belongs_to :user

	validates :name, :description, :url, :github, presence: true

end
