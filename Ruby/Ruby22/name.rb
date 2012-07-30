class Name
  def initialize(firstname, lastname)

    raise "firstname can't be left blank." if firstname.nil? || firstname.empty?
    raise "lastname can't be left blank" if lastname.nil? || lastname.empty?
    raise "firstname should be capitalize" if firstname != firstname.capitalize

    @firstname = firstname
    @lastname = lastname

    rescue Exception => e
    puts e.message
  end
end