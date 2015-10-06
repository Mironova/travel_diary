class Article < ActiveRecord::Base
  has_attached_file :cover, styles: { medium: "400x225#"}
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
  validates :title, :content,  presence: true
  extend FriendlyId
  friendly_id :title, use: :slugged

  scope :as_block, -> { where(as_block: true) }
  scope :as_article, -> { where(as_block: false) }



end
