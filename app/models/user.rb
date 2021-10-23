class User < ApplicationRecord
  has_many :category
  has_many :tests
  has_many :questions
end
