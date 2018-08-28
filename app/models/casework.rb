class Casework < ApplicationRecord
  belongs_to :caseflowwork
  has_many :caseworklines
  has_many :caseitems, :through => :caseworklines

  belongs_to(:buy,:class_name => 'Esse', :foreign_key=>'buyid' )
  belongs_to(:sell,:class_name => 'Esse', :foreign_key=>'sellid' )
  belongs_to(:sales,:class_name => 'Esse', :foreign_key=>'salesid' )

  enum status: {
  "草稿"        => 1,
  "正式"         => 2,
  "关闭"        => 3
  }
  validates :status, inclusion: statuses.keys

  def sum_quan_total
    # line_items.to_a.sum { |item| item.total_price }
    caseworklines.to_a.sum { |caseworkline| caseworkline.quantity }
  end

  def sum_openqty_total
    # line_items.to_a.sum { |item| item.total_price }
    caseworklines.to_a.sum { |caseworkline| caseworkline.openqty }
  end

  def sum_price_total
    # line_items.to_a.sum { |item| item.total_price }
    caseworklines.to_a.sum { |caseworkline| caseworkline.price_total }
  end

  def sum_vat_price_total
    # line_items.to_a.sum { |item| item.total_price }
    caseworklines.to_a.sum { |caseworkline| caseworkline.vat_price_total }
  end

  def sum_cost_total
    # line_items.to_a.sum { |item| item.total_price }
    caseworklines.to_a.sum { |caseworkline| caseworkline.cost_total }
  end

  def sum_vat_cost_total
    # line_items.to_a.sum { |item| item.total_price }
    caseworklines.to_a.sum { |caseworkline| caseworkline.vat_cost_total }
  end


end
