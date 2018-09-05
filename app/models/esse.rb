class Esse < ApplicationRecord


  # has_many :buys
  # has_many :sells
  # has_many :sales

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

  # has_one :profile, dependent: :destroy
  has_many :esselines, dependent: :destroy
  accepts_nested_attributes_for :esselines, allow_destroy: true#注意添加这两行





end
