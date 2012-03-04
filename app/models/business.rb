class Business < ActiveRecord::Base

  ## Associations
  belongs_to :user
  has_one :page
  has_many :reports

  ## Validations
  validates :name,
            :presence => true
  validates :desc,
            :presence => true

  accepts_nested_attributes_for :page, :allow_destroy => true

end
