class Post < ApplicationRecord
  validates :name, :website, :message, :identifier, presence: true
  validate :secure_website

  private

  def secure_website
    errors.add(:website, "must use https") if website.first(8) != "https://"
  end
end
