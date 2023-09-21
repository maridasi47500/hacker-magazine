class Myhack < ApplicationRecord
  has_many :hackscripts, dependent: :destroy
  has_many :myscripts, through: :hackscripts, dependent: :destroy
  accepts_nested_attributes_for :myscripts, allow_destroy: true
  has_many :hackpics, dependent: :destroy
  has_many :mypics, through: :hackpics, dependent: :destroy
  accepts_nested_attributes_for :mypics, allow_destroy: true
  has_many :notes
  def allmyhacks
    a=self.mypics.left_outer_joins(:hackpics).select("mypics.*, hackpics.myorder").to_a
    b=self.myscripts.left_outer_joins(:hackscripts).select("myscripts.*, hackscripts.myorder").to_a
    (a + b).sort_by{|k|k.myorder}
  end
  def allthishacks
    a=self.mypics.to_a
    b=self.myscripts.to_a
    (a + b).sort_by{|k|k.myhacks.length}.reverse
  end
   def note_total_nb
         self.notes.length
           end
     def notemoy
           Myhack.left_outer_joins(:notes).select("myhacks.*, avg(notes.note) as my_avg_note").group("myhacks.id").having("myhacks.id = #{self.id}")[0].my_avg_note.to_i
             end
     def self.besthacks_premier
       Myhack.left_outer_joins(:notes).select("myhacks.*, avg(notes.note) as my_avg_note").group("myhacks.id").order("my_avg_note" => "desc").offset(0).limit(1)
             end
     def self.besthacks_other
       Myhack.left_outer_joins(:notes).select("myhacks.*, avg(notes.note) as my_avg_note").group("myhacks.id").order("my_avg_note" => "desc").offset(1).limit(3)
             end
     def self.besthacksdumoment_premier
       Myhack.left_outer_joins(:notes).select("myhacks.*, avg(notes.note) as my_avg_note").group("myhacks.id").having(["notes.created_at > ?",(DateTime.now - 2.month)]).order("my_avg_note" => "desc").offset(0).limit(1)
             end
     def self.besthacksdumoment_other
       Myhack.left_outer_joins(:notes).select("myhacks.*, avg(notes.note) as my_avg_note").group("myhacks.id").having(["notes.created_at > ?",(DateTime.now - 2.month)]).order("my_avg_note" => "desc").offset(1).limit(3)
             end
end
