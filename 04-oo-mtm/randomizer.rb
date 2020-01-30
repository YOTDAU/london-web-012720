class Randomizer
  def self.random_id
    rand(67..123).chr + rand(1000..10000).to_s
  end
end