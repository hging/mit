# == Schema Information
#
# Table name: staffs
#
#  id              :integer          not null, primary key
#  email           :string(100)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Staff < ApplicationRecord
  has_secure_password
end
