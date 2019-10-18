class Tweat < ApplicationRecord
    belongs_to :user

    def to_json
        {
            title: self.title,
            body: self.body,
            author: self.user.id,
            author_name: self.user.email
        }
    end
end
