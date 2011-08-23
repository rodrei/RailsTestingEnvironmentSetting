class User < ActiveRecord::Base
  validates :first_name, :presence => true

  def push
    self.pushed_at = DateTime.now
  end

  def hello
    'yai'
  end
end

# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  age        :integer
#  created_at :datetime
#  updated_at :datetime
#  pushed_at  :datetime
#

