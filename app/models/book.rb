class Book < ActiveRecord::Base

  # scope :finished, -> { where('finished_on IS NOT NULL') }
  scope :finished, -> { where.not(finished_on: nil) }
  scope :recent, -> { where('finished_on > ?', 2.days.ago) }
  scope :search, -> (keyword) { where('keywords LIKE ?', "%#{keyword.downcase}%") if keyword.present? }

  before_save :set_keywords

  # def self.search(keyword)
  #   if keyword.present?
  #     where(title: keyword)
  #   else
  #     all
  #   end
  # end

  def finished?
    finished_on.present?
  end

  protected

  def set_keywords
    self.keywords = [ title, author, description ].map { |p| p.downcase }.join
    self.keywords = [ title, author, description ].map(&:downcase).join(' ')
  end
end
