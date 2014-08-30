class Comment < ActiveRecord::Base

  validates :comment,    presence: true
  def self.get_new_comment(post_id)
  		puts "new model"
		Comment.new(post_id: post_id)
  end

  def self.get_comments(post_id)
 	puts "get comment"
 	Comment.where(post_id: post_id)
  end

  def self.get_comment_data(post_id)
  	result = {}
  	result[:new_comment] = get_new_comment(post_id)
  	result[:comments] = get_comments(post_id)
  	user_ids = result[:comments].collect{|c| c.created_by}
  	result[:usernames] = User.get_usernames(user_ids)

  	result
  end


end
