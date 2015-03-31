class TodoItem < ActiveRecord::Base
  belongs_to :project_list
  validates :content, presence: true

  def completed?
    !completed_at.blank?
  end
end
