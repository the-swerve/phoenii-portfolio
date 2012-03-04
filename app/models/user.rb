class User < ActiveRecord::Base

  has_secure_password # This is a rails 3.1 feature. provides User#authenticate method
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  ## Constants
  ROLES = ["Investor", "Entrepreneur"]
  
  ## Associations
  has_many :investments
  has_one :business

  ## Validations
  validates :password,
            :presence => {:message => " required."}
  validates :role,
            :presence => true,
            :inclusion => {:in => ROLES}
  validates :email,
            :presence => true,
            :uniqueness => true,
            :format => {:with => /^.+@.+\..+$/, :message => "Must be an email address"}
  validates :name,
            :presence => true

  ## Callbacks
  before_validation :defaults, :on => :create
  before_save :capitalize_name

  attr_accessible :password, :password_confirmation, :email, :bio, :role, :name, :photo

  private

  def defaults
  end

  def capitalize_name
    self.name = self.name.split(' ').map(&:capitalize).join(' ')
  end

end
