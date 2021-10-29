class Category < ApplicationRecord
  has_many :tests

  def self.by_title(title)
    where(title: title)
  end
end
