class Comment < ActiveRecord::Base
  belongs_to :commenter
  belongs_to :commentable, :polymorphic => true
end
