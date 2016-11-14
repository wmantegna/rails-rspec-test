class Comment < ActiveRecord::Base
  def self.testing
    return true
  end

  # def self.build_a_new_one(name)
  #   self.create!(name: name, date: Date.today)
  # end

  def self.ordered_by_date
    return Comment.all.order(date: :desc)
  end


  # Comparison
  # ----------------------------
  def ==(other)
    text == other.text && date == other.date
  end

  def hash
    [text, date].hash
  end

  # Hash Comparison
  def eql?(other)
    self == other
  end
# ----------------------------
end
