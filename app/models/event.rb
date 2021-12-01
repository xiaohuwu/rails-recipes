class Event < ApplicationRecord
    belongs_to :category, optional: true

    validates_presence_of :name
    STATUS = ["draft", "public", "private"]
    validates_inclusion_of :status, :in => STATUS
    SELECT_STATUS = [["草稿","draft"], ["公開","public"], ["私密","private"]]

    def to_param
        "#{self.id}-#{self.name}"
    end
end
