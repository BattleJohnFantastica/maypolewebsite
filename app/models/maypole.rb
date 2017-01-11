class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end


class Maypole < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 50 }, email: true
  validates :message, presence: true, length: { maximum: 1000 }
end

class Page < ApplicationRecord
  validates :title, presence: true
  validates :photo_main, presence: true
  validates :text_main, presence: true
end

class Pagevideo < ApplicationRecord
end