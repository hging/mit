class Home < ApplicationRecord
  mount_uploader :background, HomeBackgroundUploader, mount_on: :background
end
