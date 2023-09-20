class Myscript < ApplicationRecord
  belongs_to :programminglanguage
  before_save :mycode
  has_many :hackscripts
  has_many :myhacks, through: :hackscripts
    def mylang
          self.programminglanguage.name
            end
      def mycode
            self.content=self.content.gsub(" ","\t") #remplace indenthtml par tabulation
                if self.programminglanguage
                      threads = []
                          p self.content
                              myvalue=""
                                  p (self.programminglanguage.myprogram % [self.content.gsub("\r\n",";").gsub("\n",";")])
                                      threads << Thread.new { Thread.current[:output] = `#{self.programminglanguage.myprogram % [self.content.gsub("\r\n",";").gsub("\n",";")]}` }
                                          threads.each do |t|
                                                    t.join
                                                            myvalue << t[:output]
                                                                end
                                              self.print=myvalue
                                                  end
                  end
end
