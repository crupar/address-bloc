require_relative 'entry'

class AddressBook
  attr_reader :entries

  def initialize
    @entries = []
  end


   def add_entry(name, phone, email)
     index = 0
     entries.each do |entry|
       if name < entry.name
         break
       end
       index += 1
     end
     entries.insert(index, Entry.new(name, phone, email))
   end

   def remove_entry(name, phone, email)

     entries.each do |entry|
       if name == entry.name
         entries.delete(index, Entry.new(name, phone, email))
       end
       index -= 1
     end
   end

 end
