class Post < ActiveRecord::Base
  is_impressionable counter_cache: true
  acts_as_votable
    
  validates :title,   presence: true, length: { maximum: 30 }
  validates :body,    presence: true

  belongs_to :user
  validates_associated :user, :if => :user_id

  has_many :images, dependent: :destroy
  has_and_belongs_to_many :tags

  alias_attribute :score, :cached_votes_score 
  alias_attribute :view_count, :impressions_count 
  scope :active, -> { where(visible: true).order('created_at DESC') }
  scope :inactive, -> { where(visible: false).order('created_at DESC') }

  def status
    if visible
      "Post is Visible"
    else
      "Post is Not Visible"
    end
  end
  
end
