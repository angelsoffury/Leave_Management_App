class Leave < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :start_date, presence: true
  validates :end_date, presence:true
  validates :user_id, presence: true 
  validates :approver_id, presence: true 
  validates :reason, presence: true, length: { maximum: 100 }
  validates :leave_type, presence: true

end
