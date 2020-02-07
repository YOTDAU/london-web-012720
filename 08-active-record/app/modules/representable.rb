module Representable
  def convert_seconds_to_minutes(seconds)
    "#{seconds / 60}:#{seconds % 60}"
  end
end