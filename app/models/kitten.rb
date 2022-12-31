class Kitten < ApplicationRecord
  validates_presence_of :name, message: "A Kitten needs a name, dummy"
  validates_presence_of :age, message: "Kittens must have ages"
  validates_presence_of :cuteness, message: "You must rate the cuteness"
  validates_presence_of :softness, message: "you must rate the softness"
  validates :age,
            numericality: {
              in: 0..25,
              message: "No kitten can be that old"
            }
  validates :cuteness,
            numericality: {
              in: 0..10,
              message: "No kitten is that cute.  Range is from 1 to 10"
            }
  validates :softness,
            numericality: {
              in: 0..10,
              message: "No kitten is that soft. Ranges is from 1 to 10"
            }
end
