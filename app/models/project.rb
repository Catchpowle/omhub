class Project < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles =>  { :medium => "300x300>", :thumb => "100x100>" }
	has_attached_file :image2, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	has_attached_file :image3, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	has_attached_file :image4, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	has_attached_file :image5, :styles => { :medium => "300x300>", :thumb => "100x100>" }

	validates :name, :description, presence: true

end
