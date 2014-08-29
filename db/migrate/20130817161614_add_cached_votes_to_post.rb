class AddCachedVotesToPost < ActiveRecord::Migration
  def change
    add_column :posts, :cached_votes_total, :integer, :default => 0
    add_column :posts, :cached_votes_score, :integer, :default => 0
    add_column :posts, :cached_votes_up, :integer, :default => 0
    add_column :posts, :cached_votes_down, :integer, :default => 0
    add_index  :posts, :cached_votes_total
    add_index  :posts, :cached_votes_score
    add_index  :posts, :cached_votes_up
    add_index  :posts, :cached_votes_down
  end
end
