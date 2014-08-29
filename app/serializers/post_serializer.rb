class PostSerializer < ActiveModel::Serializer
  attributes :id, :brand, :title, :size, :price_cents, :body, :user_id, :visible
end
