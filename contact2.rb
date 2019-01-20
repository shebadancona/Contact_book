class Contact

  @@contact_list = []
  @@id = 1
  attr_reader :id
  attr_accessor :first_name, :last_name, :email, :note


  # This method should initialize the contact's attributes
  def initialize(first_name, last_name,email,note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = @@id
    @@id +=1

  end

  # This method should call the initializer, 
  # store the newly created contact, and then return it
  def self.create(first_name, last_name, email, note)
    new_contact = Contact.new(first_name, last_name, email, note)
    @@contact_list << new_contact
  return new_contact
  end

  # This method should return all of the existing contacts
  def self.all
    return @@contact_list
  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(id)
    index = id
    # @@contact_list.each do |x|
    #   @@contact_list.each {|x| return x if index==id}
    #  if @id = id
#         x
#         end
# #      end
#   p @@contact_list.index.select {|x|}
@@contact_list[index]
  end

  # This method should allow you to specify 
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update(item, new_item)
      if item == "first_name"
        self.first_name = new_item
      elsif item == "last_name"
          self.last_name = new_item
      elsif
        item == "email"
        self.email = new_item
      else
        item == "note"
          self.note = new_item
      end
  end

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  def self.find_by(attribute, value)
    @@contact_list.each do |x|
    if attribute == "first_name"
        z= @@contact_list.select {|x| x.first_name == value}
    elsif attribute == "last_name"
        z=@@contact_list.select {|x| x.last_name == value}
    elsif attribute == "email"
        z= @@contact_list.select {|x| x.email == value}
    elseif attribute == "note"
       z=@@contact_list.select {|x| x.note == value}
    end
    return z
    # @@contact_list.each do |x|
    #   if attribute = value
    #     return x
    #   end
    # end
end


  # This method should delete all of the contacts
  def self.delete_all
    @@contact_list = []
  end

  def full_name
     return "#{first_name}  #{last_name}"
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete
    # findrecord=self.find_by(attribute, value)   
    return @@contact_list.delete_at[index]
  end

  # Feel free to add other methods here, if you need them.
end

# sarah=Contact.create("Sara", "Imeinu", "sara@gmail.com", "best person ever")
# chana=Contact.create("Chana", "Imeinu", "chana@gmail.com", "made se")
# y=Contact.find (1)
# p y
# y=Contact.find (0)
# p y
 #p sarah
 # x= sarah.update("first_name", "Sarah")
# p "The update of sara's file is #{x}"
# p sarah
# # sarah.update("last_name", "Sarah")
# # sarah.update("email", "Sarah")
# # sarah.update("note", "Sarah")
# p Contact.find_by(@last_name, "Imeinu")
#p Contact.find_by("first_name", "Sara")

# Contact.delete_all
# p  sarah


# p Contact.all

# p Contact.find 1
end