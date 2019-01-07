# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#User.delete_all


Unititem.delete_all
Unititem.create!(code: 'UI001',name: '人员招聘' )
Unititem.create!(code: 'UI002',name: '固定资产' )
Unititem.create!(code: 'UI003',name: '项目管理' )
Unititem.create!(code: 'UI004',name: '部门绩效' )

Unitdeal.delete_all
Unitdeal.create!(code: 'UD001',name: '销售' )
Unitdeal.create!(code: 'UD002',name: '采购' )
Unitdeal.create!(code: 'UD003',name: '费用' )
Unitdeal.create!(code: 'UD004',name: '生产' )
Unitdeal.create!(code: 'UD005',name: '入职' )
Unitdeal.create!(code: 'UD006',name: '考核' )

Unitwork.delete_all
Unitwork.create!(code: 'UW001',name: '商机' )
Unitwork.create!(code: 'UW002',name: '报价' )
Unitwork.create!(code: 'UW003',name: '询价' )
Unitwork.create!(code: 'UW004',name: '销售合同' )
Unitwork.create!(code: 'UW005',name: '交货' )
Unitwork.create!(code: 'UW006',name: '开票' )
Unitwork.create!(code: 'UW007',name: '收款' )
Unitwork.create!(code: 'UW008',name: '销售核销' )
Unitwork.create!(code: 'UW009',name: '采购合同' )
Unitwork.create!(code: 'UW010',name: '收货' )
Unitwork.create!(code: 'UW011',name: '收票' )
Unitwork.create!(code: 'UW012',name: '付款' )
Unitwork.create!(code: 'UW013',name: '采购核销' )
Unitwork.create!(code: 'UW014',name: '费用申请' )
Unitwork.create!(code: 'UW015',name: '费用报销' )
Unitwork.create!(code: 'UW016',name: '费用付款' )
Unitwork.create!(code: 'UW017',name: '简历' )
Unitwork.create!(code: 'UW018',name: '面试' )
Unitwork.create!(code: 'UW019',name: '录用' )
Unitwork.create!(code: 'UW020',name: '劳动合同' )
Unitwork.create!(code: 'UW021',name: '薪酬' )
Unitwork.create!(code: 'UW022',name: '考勤管理' )
Unitwork.create!(code: 'UW023',name: '绩效考核' )
Unitwork.create!(code: 'UW024',name: '社保' )
Unitwork.create!(code: 'UW025',name: '资产领用' )
