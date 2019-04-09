class Caseworklinekind < ApplicationRecord
  belongs_to :casework
  belongs_to :caseitem
  belongs_to :kind

  enum vatgroup: {
  "17%"        => 1,
  "6%"         => 2,
  "3%"         => 3,
  "0%"         => 4,
  }
  validates :vatgroup, inclusion: vatgroups.keys

  enum status: {
    "Draft"        => 1,
    "Open"         => 2,
    "Close"        => 3
  }
  validates :status, inclusion: statuses.keys

  validates :price, numericality: {greater_than_or_equal_to: 0}
  validates :cost, numericality: {greater_than_or_equal_to: 0}

  def price_total
      price * quantity
    end

  def cost_total
      cost * quantity
    end

  def vat_price_total
    eval(sprintf("%8.2f",(price_total/1.17)*0.17))
  end


  def vat_cost_total
    eval(sprintf("%8.2f",(cost_total/1.17)*0.17))
  end

  def roundf(places)
      temp = self.to_s.length
      sprintf("%#{temp}.#{places}f",self).to_f
  end

end
