class Hackmyotherscript < ApplicationRecord
  belongs_to :myhack
  belongs_to :myotherscript
  validates_uniqueness_of :myhack_id, scope: :myotherscript_id
    before_save do
      self.myorder=self.myhack.myscripts.length+self.myhack.mypics.length + self.myhack.myotherscripts.length+ 1
            end
end
