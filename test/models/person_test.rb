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
#  professional      :string(255)
#  research_area     :string(255)
#  faculty           :string(255)
#  person_type       :integer
#

require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
