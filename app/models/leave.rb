class Leave < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :user_id, presence: true 
  validates :approver_id, presence: true 
  validates :reason, presence: true, length: { maximum: 100 }

end
