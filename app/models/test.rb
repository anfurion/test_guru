class Test < ApplicationRecord
  belongs_to :category
  has_many :questions

  def self.by_category(category_title)
    category = Category.by_title(category_title)
    where(category: category).order(id: :desc).pluck(:title)
  end
end
