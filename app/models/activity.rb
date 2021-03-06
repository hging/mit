# == Schema Information
#
# Table name: activities
#
#  id            :integer          not null, primary key
#  content       :text(65535)
#  title         :string(255)
#  author        :string(255)
#  published     :boolean
#  start         :datetime
#  end           :datetime
#  activity_type :integer          default("activity")
#  news_type     :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  logo          :json
#

class Activity < ApplicationRecord
  mount_uploader :logo, ActivityLogoUploader
  scope :active, -> {where(:published => true)}
  default_scope { where(:activity_type => 0..7).order("start DESC") }

  enum :activity_type => {
    :activity => 0,
    :news => 1,
    :nice_seminar_series => 2,
    :workshops => 3,
    :research => 4,
    :highlights => 5,
    :events => 6,
    :archive => 7,
    :hardware => 8,
    :software => 9
  }
end
