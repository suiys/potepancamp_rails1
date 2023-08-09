class Event < ApplicationRecord
  validates :title, presence: true, length: {maximum: 20}
  validates :startdate, presence: true
  validates :enddate, presence: true
  validates :memo, length: {maximum: 500}
  validate :enddate_must_be_after_startdate

  def enddate_must_be_after_startdate
    if enddate.present? && enddate < startdate
      errors.add(:enddate, "は開始日以降の日付である必要があります")
    end
  end
end
