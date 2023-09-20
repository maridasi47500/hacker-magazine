class Hackscript < ApplicationRecord
  belongs_to :myhack
  belongs_to :myscript
  validates_uniqueness_of :myhack_id, scope: :myscript_id
  before_save do
    self.myorder=self.myhack.myscripts.length+self.myhack.mypics.length + 1
  end
end
