class Contact < ApplicationRecord
  
  include PgSearch
  pg_search_scope :whose_name_starts_with,
                  :against => :name,
                  :using => {
                    :tsearch => {:prefix => true}
                  }

  belongs_to  :user

  extend FriendlyId
  friendly_id :name, use: :slugged

  def age
    if self.birthday.present?
      today_date = DateTime.now
      birthday_date = self.birthday 
      age = today_date.year - birthday_date.year
      # if have not birthday in this year than less then one
      age = age - 1 if ( birthday_date.month >  today_date.month or (birthday_date.month >= today_date.month and birthday_date.day > today_date.day))
      return age
    end
  end


end
