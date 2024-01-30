class Article < ApplicationRecord
    validates :title, presence: true
    validates :content, presence: true

    def self.search(squery)
        where("title LIKE ? OR content LIKE ?", "%#{squery}%", "%#{squery}%")
    end

end