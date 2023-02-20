# frozen_string_literal: true

require_relative "random_number_giver"
$zero = "Life is a journey, enjoy the ride."
$one = "Good things come to those who wait."
$two = "An opportunity will present itself soon."
$three = "A wise person is one who learns from others."
$four = "Your future is bright, so keep moving forward."
$five = "A journey of a thousand miles begins with a single step."
$six = "Trust your instincts and follow your heart."
$seven = "You will soon receive a pleasant surprise."
$eight = "Your hard work will pay off in the end."
$nine = "Luck is on your side today."
$ten = "A beautiful adventure awaits you."
$eleven = "Believe in yourself and all that you are."
$twelve = "Your creativity will soon be rewarded."
$thirteen = "Every day is a new beginning, so seize the day."
$fourteen = "You are stronger than you think, so don't give up."
$fifteen = "Success is within your reach, so keep pushing forward."
$sixteen = "Kindness is a powerful force, so spread it everywhere you go."
$seventeen = "Change is the only constant in life, so embrace it."
$eighteen = "Your future is full of endless possibilities."
$nineteen = "Don't let fear hold you back from achieving your dreams."
$twenty = "The best way to predict the future is to create it."
$phrases = [zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen, twenty]

class PhraseMaker
  def initialize
    @phrases = $phrases
  end
  
  def give_a_phrase
    init = 0
    finish = @phrases.length - 1
    random_number_giver = RandomNumberGiver.new
    number_random = random_number_giver.give_a_number_random_between(init, finish)
    @phrases[number_random]
  end
end
