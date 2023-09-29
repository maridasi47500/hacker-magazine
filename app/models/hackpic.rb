class Hackpic < ApplicationRecord
  belongs_to :mypic
  belongs_to :myhack
  validates_uniqueness_of :mypic_id, scope: :myhack_id
  after_validation do
    self.myorder=self.myhack.myscripts.length+self.myhack.mypics.length + self.myhack.myotherscripts.length + 1
          end
end
