class Test < ApplicationRecord
  belongs_to :category
  has_many :questions
  has_many :user_tests
  has_many :users, through: :user_tests
  belongs_to :author, class_name: "User",
                      foreign_key: "author_id"

  def self.by_category(category_title)
    category = Category.by_title(category_title)
    where(category: category).order(id: :desc).pluck(:title)
  end
end
