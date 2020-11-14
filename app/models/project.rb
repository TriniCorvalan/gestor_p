class Project < ApplicationRecord

    validates :name, :description, presence: true
    enum status: %w[propuesta en_progreso terminada]
    
    
    before_save :has_status

    def has_status
        if self.status.present?
            self.status.save
        else
            self.status = "propuesta"
        end
    end
end
