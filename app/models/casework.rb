class Casework < ApplicationRecord
  belongs_to :caseflowwork
  has_many :caseworklines

  belongs_to(:buy,:class_name => 'Esse', :foreign_key=>'buyid' )
  belongs_to(:sell,:class_name => 'Esse', :foreign_key=>'sellid' )
  belongs_to(:sales,:class_name => 'Esse', :foreign_key=>'salesid' )

end
