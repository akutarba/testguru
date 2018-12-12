class Test < ApplicationRecord
  belongs_to :category

  has_many :questions

  def self.get_titles(category_name)
    Test.joins(' JOIN categories ON tests.category_id = categories.id').where('categories.title = ?', category_name)
        .order(title: :desc).pluck(:title)
  end
end
