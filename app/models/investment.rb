class Investment < ActiveRecord::Base

  belongs_to :user
  belongs_to :business

  after_create :update_business

  validates :business_id,
            :presence => true,
            :numericality => true
  validates :user_id,
            :presence => true,
            :numericality => true
  validates :amount,
            :presence => true,
            :numericality => true

  def equity
    denom = self.business.goal_investment
    if self.business.invested_amount >= denom
      return 0
    elsif denom && denom > 0
      offered = self.business.equity_offered / 100.0
      self.amount.to_f / self.business.goal_investment.to_f * 100 * offered
    else
      return 0
    end
  end

  private
  
  def update_business
    if self.business.invested_amount
      self.business.invested_amount += self.amount
    else
      self.business.invested_amount = self.amount
    end
    self.business.save
  end

end
