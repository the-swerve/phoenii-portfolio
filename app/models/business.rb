class Business < ActiveRecord::Base

  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "200x200>" }

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
  validates :goal_investment,
            :presence => true,
            :numericality => true
  validates :invested_amount,
            :presence => true,
            :numericality => true

  accepts_nested_attributes_for :page, :allow_destroy => true

  before_validation :zero_investment, :on => :create

  ## XXX very inefficient. but a quick hack solution for startup weekend.
  def update_invested
    self.invested_amount = self.investments.map(&:amount).sum
    self.goal_investment = 0 unless self.goal_investment
    self.equity_offered = 0 unless self.equity_offered
    self.save
  end

  def equity_given
    if self.equity_offered > 0
      n = self.investments.map(&:equity).sum # % self.equity_offered
    else
      n = self.investments.map(&:equity).sum
    end
    return n.to_f
  end

  private

  def zero_investment
    self.invested_amount = 0
  end

end
