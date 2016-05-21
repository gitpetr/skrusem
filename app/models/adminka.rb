class Adminka < ActiveRecord::Base
  has_many :attachments
  validates :title, :body, presence: true

  accepts_nested_attributes_for :attachments
end
