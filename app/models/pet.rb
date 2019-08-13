class Pet < ApplicationRecord
  SPECIES = %w(dog cat lizard turtle)

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }


  def days_since_found
    (Date.today - found_on).to_i
  end
end
