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

class Hardware < Activity
  default_scope { unscope(:where).hardware.order("start DESC") }
end
