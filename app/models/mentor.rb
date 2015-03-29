class Mentor < ActiveRecord::Base
  validates_presence_of :name, :organization, :phone_number, :tier, :twitter

  validates_format_of :phone_number, with: /\A\d{3}-\d{3}-\d{4}\z/, message: "isn't a correctly formatted phone number: e.g. 123-456-7890", allow_blank: false
  validates :tier, :inclusion => {:in => [1,3]}, message: "must be between 1 and 3"
end
