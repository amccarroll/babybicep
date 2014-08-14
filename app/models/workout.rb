class Workout < ActiveRecord::Base
	validates :intensity, :program, presence: true,
			length: { minimum: 4 }
	validates :trainer, presence: true,
			length: { minimum: 2 }
end
