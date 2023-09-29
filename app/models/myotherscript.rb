class Myotherscript < ApplicationRecord
  belongs_to :programminglanguage
    has_many :hackmyotherscripts
      has_many :myhacks, through: :hackmyotherscripts
    before_save :mycode
    def filename=(uploaded_io)
      File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
          file.write(uploaded_io.read)
      end
      write_attribute(:filename,uploaded_io.original_filename)
    end
    def filename
      read_attribute(:filename)
    end
    def content
            thisscript=Rails.root.to_s+"/public/uploads/"+self.filename #remplace indenthtml par tabulation
      File.read(thisscript)
    end

    def mylang
                self.programminglanguage.name
                            end
          def mycode
            thisscript=Rails.root.to_s+"/public/uploads/"+self.filename #remplace indenthtml par tabulation
                                        if self.programminglanguage
                                                                threads = []
                                                                                          
                                                                                                                        myvalue=""
                                                                                                                                                      p (self.programminglanguage.myscript % [thisscript])
                                                                                                                                                                                            threads << Thread.new { Thread.current[:output] = `#{self.programminglanguage.myscript % [thisscript]}` }
                                                                                                                                                                                                                                      threads.each do |t|
                                                                                                                                                                                                                                                                                            t.join
                                                                                                                                                                                                                                                                                                                                                        myvalue << t[:output]
                                                                                                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                    self.print=myvalue
                                                                                                                                                                                                                                                                                                                                      end
                                                          end
end
