class User < ApplicationRecord
  # def tests_by_level(level)
  #   Test.where('level = ?', level)
  # end

  def tests_by_level(level)
    Test.joins('JOIN user_tests ON tests.id = user_tests.test_id')
        .where("tests.level = ?",level).where("user_tests.user_id = ?", id)
  end
end