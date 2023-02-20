# frozen_string_literal: true

class RandomNumberGiver
  def give_a_number_random_between(init, finish)
    rand(init..finish)
  end
end
