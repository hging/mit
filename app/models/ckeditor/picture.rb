# == Schema Information
#
# Table name: ckeditor_assets
#
#  id                :integer          not null, primary key
#  data_file_name    :string(255)      not null
#  data_content_type :string(255)
#  data_file_size    :integer
#  type              :string(30)
#  width             :integer
#  height            :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Ckeditor::Picture < Ckeditor::Asset
  mount_uploader :data, CkeditorPictureUploader, mount_on: :data_file_name

  def url_content
    url
  end

  def url(version=nil)
    if version == :thumb
      url
    elsif version == :content
      url
    else
      super
    end
  end
end
