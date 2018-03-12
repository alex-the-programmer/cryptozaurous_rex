class TimeFrame < ApplicationRecord
  validates_presence_of :from, :to

  before_save :update_interval

  private

  def update_interval
    self.interval = self.to - self.from
  end
end
