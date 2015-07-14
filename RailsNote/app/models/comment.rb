class Comment < ActiveRecord::Base
  belongs_to :note
  validates :body, presence: true

end
