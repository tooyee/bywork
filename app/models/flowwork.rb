class Flowwork < ApplicationRecord

  # 账户类型 activeunitflow accouttype integer 计划, 合约, 核算
    enum accouttype: {
      "Plan"        => 1,
      "Contract"    => 2,
      "Accout"  => 3
    }
    validates :accouttype, inclusion: accouttypes.keys

    # 流程排序序号 activeunitflow floworderid integer

    # 流程类型 activeunitflow flowtype integer 测试, 发布
    enum flowtype: {
    "Test"        => 1,
    "Use"     => 2
    }
    validates :flowtype, inclusion: flowtypes.keys

    # 凭证模板类型 activeunitflow vouchertemplatetype boolean 有, 无
    enum vouchertemplatetype: {
    "yes"        => 1,
    "no"     => 2
    }
    validates :vouchertemplatetype, inclusion: vouchertemplatetypes.keys

    # 内容类型 activeunitflow contenttype integer
    # 人力, 物料, 产品, 文档, 服务, 管理
    enum contenttype: {
    "cHuman"        => 1,
    "cMaterial"     => 2,
    "cProduct"        => 3,
    "cDocument"     => 4,
    "cService"        => 5,
    "cManage"     => 6,
    }
    validates :contenttype, inclusion: contenttypes.keys

    # 资源类型 activeunitflow resourcestype integer
    # 人力, 物料, 产品, 文档, 服务, 管理
    enum resourcestype: {
    "eHuman"        => 1,
    "eMaterial"     => 2,
    "eProduct"        => 3,
    "eDocument"     => 4,
    "eService"        => 5,
    "eManagement"     => 6,
    }
    validates :resourcestype, inclusion: resourcestypes.keys

    # 子交易类型 activeunitflow subtransactiontype integer
    # 计划, 合约, 物流, 核算, 收付, 核销
    enum subdealtype: {
    "sPlan"        => 1,
    "sContract"     => 2,
    "sLogistics"        => 3,
    "sAccounting"     => 4,
    "sPayment"        => 5,
    "sCanclelation"     => 6,
    }
    validates :subdealtype, inclusion: subdealtypes.keys

    # 库存核算类型 activeunitflow stockaccounttype integer
    # 发货, 到货，核销 / 同品, 异品,，退货
    enum stockaccounttype: {
    "same arrival"           => 1,
    "different arrival"      => 2,
    "same deliver"            => 3,
    "different deliver"       => 4,
    "Return same deliver"             => 5,
    "Return same arrival"          => 6,
    }
    validates :stockaccounttype, inclusion: stockaccounttypes.keys

    # 复制资源类型 activeunitflow copyresourcestype integer 有, 无
    enum copyresourcestype: {
    "Copy"        => 1,
    "No_copy"     => 2
    }
    validates :copyresourcestype, inclusion: copyresourcestypes.keys


  belongs_to :flowdeal
  belongs_to :unitwork

  belongs_to(:beforeflowwork,:class_name => 'Flowwork', :foreign_key=>'beforeunitwork_id' )
  belongs_to(:afterflowwork,:class_name => 'Flowwork', :foreign_key=>'afterunitwork_id' )

end
