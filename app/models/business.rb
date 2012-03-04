class Business < ActiveRecord::Base

  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  ## Associations
  belongs_to :user
  has_one :page
  has_many :reports
  has_many :investments

  ## Validations
  validates :name,
            :presence => true
  validates :desc,
            :presence => true

  accepts_nested_attributes_for :page, :allow_destroy => true

end
