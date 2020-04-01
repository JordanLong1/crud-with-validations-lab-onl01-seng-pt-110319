class Song < ApplicationRecord

    validates :title, presence: true 
    validate :validate 
    validate :validation_number_two
    validates :title, uniqueness: { scope: :release_year,
    message: "should happen once per year" } 

    
    def validate 
       if released == true && release_year != nil && release_year > Date.current.year  
       errors.add(:release_year, "Release year can't be blank")
        end
    end

    def validation_number_two

        if release_year == nil && released == true 
            errors.add(:release_year, "Release year can't be blank")
        end
    end

    
end


# song_is_invalid_without_release_year_when_released_is_true

