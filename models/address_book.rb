require_relative 'entry'

class AddressBook
  attr_reader :entries

  def initialize
    @entries = []
  end

  def add_entry(name, phone_number, email)
    index = 0
    entries.each do |entry|
      if name < entry.name
        break
      end
      index+= 1
    end
    entries.insert(index, Entry.new(name, phone_number, email))
  end

  def remove_entry(name, phone_number, email)
    index = 0
    entries.each do |entry|
      if entry.to_s == "Name: #{name}\nPhone Number: #{phone_number}\nEmail: #{email}"
        break
      end
      index += 1
    end
    entries.delete_at(index)
  end
end
