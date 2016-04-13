class Link < ActiveRecord::Base
  belongs_to :user
  has_many :upvotes

  validates :title, presence: true
  

  def scores
    upvotes.count
  end

  def vote
    upvotes.count + 1
  end



end
