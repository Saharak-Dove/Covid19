class Date
  def date_formatted
    self.strftime('%d/%m/%Y') rescue ""
  end

  def datetime_formatted
    self.strftime('%d/%m/%Y เมื่อเวลา %H:%M') rescue ''
  end

  def datetime_for_calender
    self.strftime('%Y-%m-%d %H:%M:%S') rescue ''
  end

  def to_difference_str
    days = TimeDifference.between(self, Date.today).in_days.to_i

    days.zero? ? "วันนี้" : "#{days} วันที่แล้ว"
  end

  def to_day_month
    I18n.l(self, format: '%d %B')
  end

  def to_year_month_day
    self.strftime('%Y-%m-%d')
  end

  def last_updated
    self.to_difference_str
  end
end
