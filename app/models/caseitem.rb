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

      @casedeal.save
      
      flowdeal.flowworks.each do |flowwork|
        @caseflowwork = Caseflowwork.new
        @caseflowwork.code = flowwork.unitwork.code
        @caseflowwork.name = flowwork.unitwork.name
        @caseflowwork.casedeal_id = @casedeal.id
        puts @caseflowwork.name
        @caseflowwork.accouttype = flowwork.accouttype
        @caseflowwork.floworderid = flowwork.floworderid
        @caseflowwork.flowtype = flowwork.flowtype

        @caseflowwork.vouchertemplatetype = flowwork.vouchertemplatetype
        @caseflowwork.contenttype = flowwork.contenttype
        @caseflowwork.resourcestype = flowwork.resourcestype

        @caseflowwork.subdealtype = flowwork.subdealtype
        @caseflowwork.stockaccounttype = flowwork.stockaccounttype
        @caseflowwork.copyresourcestype = flowwork.copyresourcestype

        @caseflowwork.beforeunitwork_id = flowwork.beforeunitwork_id
        @caseflowwork.afterunitwork_id = flowwork.afterunitwork_id

        @caseflowwork.save

      end
      # puts @casedeal.id
      # puts @casedeal.name
      # puts @casedeal.caseitem_id
      # puts @casedeal.dealtype
      # puts @casedeal.floworderid
      # puts @casedeal.flowtype



    end
  end

end
