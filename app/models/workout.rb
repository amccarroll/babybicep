class Workout < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :trainer, presence: true,
			length: { minimum: 2 }
	validates :intensity, :program, presence: true,
			length: { minimum: 4 }
end
