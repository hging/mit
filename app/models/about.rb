class About < ApplicationRecord
  validates :singleton_guard, inclusion: { in: [0] }

  def self.instance
    # there will be only one row, and its ID must be '1'
    begin
      find(1)
    rescue ActiveRecord::RecordNotFound
      # slight race condition here, but it will only happen once
      row = About.new
      row.singleton_guard = 0
      row.save!
      row
    end
  end

  def self.method_missing(method, *args)
    if About.instance.methods.include?(method)
      About.instance.send(method, *args)
    else
      super
    end
  end
end
