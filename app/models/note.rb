class Note < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :myhack
  def note_total_nb
    self.myhack.notes.length
  end
  def notemoy
    Myhack.left_outer_joins(:notes).select("myhacks.*, avg(notes.note) as my_avg_note").group("myhacks.id").having("myhacks.id = #{self.myhack_id}")[0].my_avg_note.to_i
  end
end
