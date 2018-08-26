class Esse < ApplicationRecord
  # 资源类型 activeunitflow resourcestype integer
  # 人力, 物料, 产品, 文档, 服务, 管理
enum essetype: {
"人力"        => 1, #Resources_Human
"物料"     => 2, #Resources_material
"产品"        => 3, #Resources_product
"文档"     => 4, #Resources_document
"服务"        => 5, #Resources_service
"管理"     => 6, #Resources_management
"合作伙伴"  => 7,
}
validates :essetype, inclusion: essetypes.keys
end
