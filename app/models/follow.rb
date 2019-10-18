class Follow < ApplicationRecord
    belongs_to :user
    has_one :target, :class_name => "User", :primary_key => "target", :foreign_key => "id"
end
