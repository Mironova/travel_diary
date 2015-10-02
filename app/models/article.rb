class Article < ActiveRecord::Base
  validates :title, :content,  presence: true

  scope :as_block, -> { where(as_block: true) }
  scope :as_article, -> { where(as_block: false) }

end
