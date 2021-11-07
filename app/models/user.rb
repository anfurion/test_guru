class User < ApplicationRecord
  has_many :user_tests
  has_many :tests, through: :user_tests
  has_many :my_tests, inverse_of: :author, class_name: 'Test',
                      foreign_key: 'author_id'
  def tests_by_level(target_level)
    tests.where(level: target_level)
  end
end
