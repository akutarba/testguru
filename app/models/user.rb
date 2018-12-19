class User < ApplicationRecord

  has_many :tests, through: :test_passages
  has_many :author_tests, class_name: 'Test', foreign_key: :author_id
  has_many :test_passages


  EMAIL = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :email, format: EMAIL, uniqueness: true

  def tests_by_level(level)
    tests.by_level(level)
  end
end