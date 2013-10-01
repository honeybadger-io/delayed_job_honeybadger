class CobraJob
  def perform
    raise 'cobras!'
  end

  def max_attempts
    1
  end
end
