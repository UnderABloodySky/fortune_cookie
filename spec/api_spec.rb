# frozen_string_literal: true

RSpec.describe Api do
  it "has a version number" do
    expect(Api::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end

  it "RandomNumberGiveANumberBeetweenTwoNumbers" do
    random_number_giver = RandomNumberGiver.new
    init = 2
    finish = 42
    random_number = random_number_giver.give_a_number_random_between(init, finish)
    expect(true).to eq(random_number >= init & random_number <= finish)
  end
end
