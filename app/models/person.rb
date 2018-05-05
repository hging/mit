# == Schema Information
#
# Table name: people
#
#  id                :integer          not null, primary key
#  avatar            :string(255)
#  name              :string(255)
#  title             :string(255)
#  email             :string(255)
#  data_content_type :string(255)
#  data_file_size    :string(255)
#  first_word        :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Person < ApplicationRecord
  mount_uploader :avatar, PeopleAvatarUploader, mount_on: :avatar
  before_save :set_first_word

  def set_first_word
    self.first_word = Spinying.parse(:word => self.name)[0].downcase
  end
end
