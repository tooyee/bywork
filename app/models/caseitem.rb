class Caseitem < ApplicationRecord
  belongs_to :flowitem
  has_many :casedeals
  has_many :caseworklines

  def copy_flowdeals_to_casedeals(caseitem)
    caseitem.flowitem.flowdeals.each do |flowdeal|
      @casedeal = Casedeal.new
      @casedeal.name = flowdeal.unitdeal.name
      @casedeal.caseitem_id = caseitem.id
      @casedeal.dealtype = flowdeal.dealtype
      @casedeal.floworderid = flowdeal.floworderid
      @casedeal.flowtype = flowdeal.flowtype

      # puts @casedeal.id
      # puts @casedeal.name
      # puts @casedeal.caseitem_id
      # puts @casedeal.dealtype
      # puts @casedeal.floworderid
      # puts @casedeal.flowtype


      @casedeal.save
    end
  end

end
